set(SRC_LIST1 calluserservice.cc ../user.pb.cc)
add_executable(consumer1 ${SRC_LIST1})
target_link_libraries(consumer1 protobuf mcrpc)

set(SRC_LIST2 callfriendservice.cc ../friend.pb.cc)
add_executable(consumer2 ${SRC_LIST2})
target_link_libraries(consumer2 protobuf mcrpc)