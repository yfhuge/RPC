#include <iostream>
#include <string>
#include "user.pb.h"
#include "mcrpcprovide.h"
#include "mcrpcapplication.h"
#include "logger.h"

/*
UserServices原来是一个本地服务，提供了两个进程内的本地方法，Login和GetFriendsLists
*/
class UserServices : public fixbug::UserServiceRpc
{
public:
    bool Login(std::string name, std::string pwd)
    {
        std::cout << "doing local service: Login" << std::endl;
        std::cout << "name:" << name << " pwd:" << pwd << std::endl;
        return true;
    }

    bool Register(int32_t id, std::string name, std::string pwd)
    {
        std::cout << "doing local service: Register" << std::endl;
        std::cout << "id:" << id << " name:" << name << " pwd:" << pwd << std::endl;
        return true;
    }

    void Login(::google::protobuf::RpcController* controller,
                       const ::fixbug::LoginRequest* request,
                       ::fixbug::LoginResponse* response,
                       ::google::protobuf::Closure* done)
    {
        // 获取请求数据
        std::string name = request->name();
        std::string pwd = request->pwd();

        // 执行相关业务
        bool success = Login(name, pwd);

        // 写入响应数据
        fixbug::ResultCode* rc = response->mutable_code();
        rc->set_errcode(0);
        rc->set_errmsg("");

        // 通知网络服务，进行下一步流程
        done->Run();
    }

    void Register(::google::protobuf::RpcController* controller,
                       const ::fixbug::RegisterRequest* request,
                       ::fixbug::LoginResponse* response,
                       ::google::protobuf::Closure* done)
    {
        // 获取请求数据
        int32_t id = request->id();
        std::string name = request->name();
        std::string pwd = request->pwd();

        // 执行本地业务
        bool success = Register(id, name, pwd);

        // 写入响应数据
        response->mutable_code()->set_errcode(0);
        response->mutable_code()->set_errmsg("");
        response->set_success(success);

        // 通知网络服务，进行下一步操作
        done->Run();
    }
};

int main(int argc, char** argv)
{
    // mcprc网络服务初始化
    McrpcApplication::init(argc, argv);

    // mcprc网络服务提供者发布节点
    McrpcProvide provide;
    provide.NotifyService(new UserServices());

    // 启动这个网络服务节点
    provide.Run();

    return 0;
}