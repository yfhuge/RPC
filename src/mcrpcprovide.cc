#include "mcrpcprovide.h"
#include <iostream>
#include "zookeeperutil.h"

// 发布一个节点
void McrpcProvide::NotifyService(::google::protobuf::Service *service)
{
    ServiceInfo m_serviceInfo;

    const google::protobuf::ServiceDescriptor* serviceDesc = service->GetDescriptor();

    // 服务的名称
    std::string service_name = serviceDesc->name();
    // 服务中方法的数量
    int method_cnt = serviceDesc->method_count();

    std::cout << "serviceName : " << service_name << std::endl;

    for (int i = 0; i < method_cnt; ++ i)
    {
        // 获取服务中的第i个方法
        const google::protobuf::MethodDescriptor* pmethodDesc = serviceDesc->method(i);

        // 方法的名称
        std::string method_name = pmethodDesc->name();
        m_serviceInfo.m_methodMap.insert({method_name, pmethodDesc});

        std::cout << "methodName : " << method_name <<std::endl;
    }
    m_serviceInfo.m_service = service;
    m_serviceMap.insert({service_name, m_serviceInfo});
}

// 启动一个节点
void McrpcProvide::Run()
{
    std::string ip = McrpcApplication::GetInstance().GetConfig().Load("rpcserviceip");
    uint16_t port = atoi(McrpcApplication::GetInstance().GetConfig().Load("rpcserviceport").c_str());
    muduo::net::InetAddress address(ip, port);
    muduo::net::TcpServer server(&m_eventLoop, address, "RpcServer");

    // 注册连接回调
    server.setConnectionCallback(std::bind(&McrpcProvide::OnConnection, this, std::placeholders::_1));
    
    // 注册消息回调
    server.setMessageCallback(std::bind(&McrpcProvide::OnMessage, this, std::placeholders::_1, std::placeholders::_2, std::placeholders::_3));

    // 设置线程数量
    server.setThreadNum(4);

    // 把当前rpc节点上要发布的服务全部注册到zk上面，让rpc client可以从zk上面发现服务
    ZkClient zkCli;
    zkCli.Start();
    // server_name为永久性节点，method_name为临时性节点
    for (auto &sp : m_serviceMap)
    {
        std::string servicePath = "/" + sp.first;
        zkCli.Create(servicePath.c_str(), nullptr, 0);
        for (auto &mp : sp.second.m_methodMap)
        {
            std::string methodPath = servicePath + "/" + mp.first;
            char methodPathData[128] = {0};
            sprintf(methodPathData, "%s:%d", ip.c_str(), port);
            // ZOO_EPHEMERAL表示是一个临时节点
            zkCli.Create(methodPath.c_str(), methodPathData, sizeof(methodPathData), ZOO_EPHEMERAL);
        }
    }

    std::cout << "McrpcProvide start service at ip:" << ip << " port:" << port << std::endl;
    server.start();
    m_eventLoop.loop();
}

// 连接回调函数
void McrpcProvide::OnConnection(const muduo::net::TcpConnectionPtr& conn)
{
    if (!conn->connected())
    {
        // 服务的连接断开了
        conn->shutdown();
    }
}

// 读写消息回调函数
void McrpcProvide::OnMessage(const muduo::net::TcpConnectionPtr& conn, muduo::net::Buffer* buffer, muduo::Timestamp time)
{
    /*
    为了解决TCP粘包拆包问题，一次有效的消息结构为：头部信息的长度+头部信息+消息体
    头部信息为：服务名称 + 方法名称 + 参数数据的长度
    消息体：参数
    */
    std::string recv_buf = buffer->retrieveAllAsString();
    int header_size = 0; 
    recv_buf.copy((char*)&header_size, 4, 0);
    std::string str_header = recv_buf.substr(4, header_size);
    mcrpc::Header rpc_header;
    if (! rpc_header.ParseFromString(str_header))
    {
        // 序列化失败
        std::cout << "header parse error, context:" << str_header << std::endl;
        return; 
    }
    std::string service_name = rpc_header.service_name();
    std::string method_name = rpc_header.method_name();
    int arg_size = rpc_header.arg_size();
    std::string arg_str = recv_buf.substr(4 + header_size, arg_size);

    std::cout << "-----------------------------------" << std::endl;
    std::cout << "header_size = " << header_size << std::endl;
    std::cout << "service_name = " << service_name << std::endl;
    std::cout << "method_name = " << method_name << std::endl;
    std::cout << "arg_size = " << arg_size << std::endl;
    std::cout << "arg_str = " << arg_str << std::endl;
    std::cout << "-----------------------------------" << std::endl;

    if (! m_serviceMap.count(service_name))
    {
        // 在当前发布的服务中没有找到这个服务
        std::cout << service_name << " is not exist!" << std::endl;
        return;
    }
    auto it = m_serviceMap[service_name];
    if (! it.m_methodMap.count(method_name))
    {
        // 没有在相应的服务中找到对应的方法
        std::cout << service_name << " : " << method_name << " is not exist!" << std::endl;
        return;
    }
    auto mit = it.m_methodMap[method_name];
    google::protobuf::Service *m_service = it.m_service;
    google::protobuf::Message *request = m_service->GetRequestPrototype(mit).New();
    if (! request->ParseFromString(arg_str))
    {
        // 序列化失败
        std::cout << "request parse error, context:" << arg_str << std::endl;
        return;
    }

    google::protobuf::Message *response = m_service->GetResponsePrototype(mit).New();
    google::protobuf::Closure *closure = google::protobuf::NewCallback<McrpcProvide, 
                                                                    const muduo::net::TcpConnectionPtr&, 
                                                                    google::protobuf::Message*>(
                                                                        this,
                                                                        &McrpcProvide::SendRpcResponse,
                                                                        conn,
                                                                        response
                                                                    );
    it.m_service->CallMethod(mit, nullptr, request, response, closure);
}

// Clorse的回调，用于序列化rpc和网络发送
void McrpcProvide::SendRpcResponse(const muduo::net::TcpConnectionPtr& conn, google::protobuf::Message *response)
{
    std::string arg_str;
    if (! response->SerializeToString(&arg_str))
    {
        std::cout << "response serialize error!" << std::endl;
    }
    else 
    {
        conn->send(arg_str);
    }
    // 模拟http的短连接，一次请求响应之后就断开连接
    conn->shutdown();

}