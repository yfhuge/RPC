#include "friend.pb.h"
#include <string>
#include <vector>
#include <iostream>
#include "mcrpcapplication.h"

class FriendService: public RPC::FriendServiceRpc
{
public:
    std::vector<std::string> GetFriendlist(int32_t userid)
    {
        std::cout << "doing local service: FriendService" << std::endl;
        std::vector<std::string> vec;
        vec.push_back("yangfeng");
        vec.push_back("huge");
        vec.push_back("jocker xue");
        return vec;
    }

    void GetFriendlist(::google::protobuf::RpcController* controller,
                       const ::RPC::GetFriendlistRequest* request,
                       ::RPC::GetFriendlistResponse* response,
                       ::google::protobuf::Closure* done)
    {
        // 获取请求数据
        int32_t userid = request->userid();

        // 执行本地业务
        std::vector<std::string> friends = GetFriendlist(userid);

        // 写入响应数据
        response->mutable_result()->set_errcode(0);
        response->mutable_result()->set_errmsg("");
        for (auto &i : friends)
        {
            std::string *name = response->add_friendlist();
            *name = i;
        }

        // 通知网络服务，执行下一步操作
        done->Run();
    }
};

int main(int argc, char** argv)
{
    McrpcApplication::init(argc, argv);

    McrpcProvide provide;
    provide.NotifyService(new FriendService());

    provide.Run();

    return 0;
}