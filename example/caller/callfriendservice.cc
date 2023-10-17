#include "mcrpcapplication.h"
#include "friend.pb.h"
#include <iostream>
#include "logger.h"

int main(int argc, char** argv)
{

    for (int i = 0; i < 10; ++ i) 
        LOG_INFO("WWWWWWWW");

    McrpcApplication::init(argc, argv);
    RPC::FriendServiceRpc_Stub stub(new McrpcChannel());
    RPC::GetFriendlistRequest request;
    RPC::GetFriendlistResponse response;
    request.set_userid(1);
    McrpcController controller;
    stub.GetFriendlist(&controller, &request, &response, nullptr);

    if (controller.Failed())
    {
        std::cout << controller.ErrorText() << std::endl;
    }
    else 
    {
        if (0 == response.result().errcode())
        {
            int friend_cnt = response.friendlist_size();
            for (int i = 0; i < friend_cnt; ++ i)
            {
                std::cout << response.friendlist(i) << std::endl;
            }
        }
        else 
        {   
            std::cout << "rpc GetFriend error:" << response.result().errmsg() << std::endl;
        }   
    }

    return 0;
}