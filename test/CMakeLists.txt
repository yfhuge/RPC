set(SRC_LIST main.cpp)
add_executable(test ${SRC_LIST})
target_link_libraries(test mcrpc)
