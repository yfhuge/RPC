set(SRC_LIST1 userservice.cc ../user.pb.cc)
add_executable(provide1 ${SRC_LIST1})
target_link_libraries(provide1 protobuf mcrpc)

set(SRC_LIST2 friendservice.cc ../friend.pb.cc)
add_executable(provide2 ${SRC_LIST2})
target_link_libraries(provide2 protobuf mcrpc)