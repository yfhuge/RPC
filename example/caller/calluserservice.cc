#include "user.pb.h"
#include "mcrpcapplication.h"
#include "logger.h"

int main(int argc, char** argv)
{

    for (int i = 0; i < 10; ++ i) LOG_INFO("TTT");

    // 初始化
    McrpcApplication::init(argc, argv);
    // 调用rpc远程服务
    fixbug::UserServiceRpc_Stub stub(new McrpcChannel());
    fixbug::LoginRequest request;
    fixbug::LoginResponse response;
    request.set_name("zhang san");
    request.set_pwd("123456");
    McrpcController controller;
    stub.Login(&controller, &request, &response, nullptr);

    if (controller.Failed())
    {
        std::cout << controller.ErrorText() << std::endl;
    }
    else 
    {
        if (0 == response.release_code()->errcode())
        {
            std::cout << "rpc login response:" << response.success() << std::endl;
        }
        else 
        {
            std::cout << "rpc login error:" << response.release_code()->errmsg() << std::endl;
        }
    }

    return 0;
}