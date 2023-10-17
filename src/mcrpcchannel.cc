#include "mcrpcchannel.h"
#include <string>
#include <sys/socket.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <errno.h>
#include "zookeeperutil.h"

void McrpcChannel::CallMethod(const google::protobuf::MethodDescriptor* method,
                          google::protobuf::RpcController* controller, 
                          const google::protobuf::Message* request,
                          google::protobuf::Message* response, 
                          google::protobuf::Closure* done)
{
    const google::protobuf::ServiceDescriptor *service = method->service();
    // 服务名称
    std::string service_name = service->name();
    // 方法名称
    std::string method_name = method->name();  
    // 参数内容
    std::string args_str;
    if (!request->SerializeToString(&args_str))
    {
        std::cout << "serialize error!" << std::endl;
        return;
    }
    // 参数的长度
    int args_size = args_str.size();

    // 封装发送的头部信息
    mcrpc::Header rpcHeader;
    rpcHeader.set_service_name(service_name);
    rpcHeader.set_method_name(method_name);
    rpcHeader.set_arg_size(args_size);
    std::string header_str;
    if (!rpcHeader.SerializeToString(&header_str))
    {
        controller->SetFailed("serialize error!");
        return;
    }
    int header_size = header_str.size();
    std::string buf_str((char*)&header_size, 4);
    buf_str += header_str;
    buf_str += args_str;

    int clientfd = socket(AF_INET, SOCK_STREAM, 0);
    if (clientfd == -1)
    {
        char buf[512] = {0};
        sprintf(buf, "create socket error, errno:", errno);
        controller->SetFailed(buf);
        return;
    }

    // 读取配置文件rpcserver的信息
    ZkClient zkCli;
    zkCli.Start();
    std::string methodPath = "/" + service_name + "/" + method_name;
    std::string hostData = zkCli.GetDate(methodPath.c_str());
    if (hostData == "")
    {
        controller->SetFailed(methodPath + " is not exists");
        return;
    }
    int idx = hostData.find(":");
    if (idx == -1)
    {
        controller->SetFailed(methodPath + " address is invalid!");
        return;
    }

    std::string ip = hostData.substr(0, idx);
    int port = atoi(hostData.substr(idx + 1).c_str());
    struct sockaddr_in address;
    address.sin_family = AF_INET;
    address.sin_port = htons(port);
    address.sin_addr.s_addr = inet_addr(ip.c_str());

    if (-1 == connect(clientfd, (sockaddr*)&address, sizeof(address)))
    {
        char buf[512] = {0};
        sprintf(buf, "connect error, errno:", errno);
        controller->SetFailed(buf);
        close(clientfd);
        return;
    }

    if (-1 == send(clientfd, buf_str.c_str(), buf_str.size(), 0))
    {
        char buf[512] = {0};
        sprintf(buf, "send error, errno:", errno);
        controller->SetFailed(buf);
        close(clientfd);
        return;
    }

    int recv_size = 0;
    char buf[1024] = {0};
    if (-1 == (recv_size = recv(clientfd, buf, 1024, 0)))
    {
        char buf[512] = {0};
        sprintf(buf, "recv error, errno:", errno);
        controller->SetFailed(buf);
        close(clientfd);
        return;
    }

    if (! response->ParseFromArray(buf, recv_size))
    {
        char buf[512] = {0};
        sprintf(buf, "response parse error, context:", buf);
        controller->SetFailed(buf);
        close(clientfd);
        return;
    }

    close(clientfd);

}