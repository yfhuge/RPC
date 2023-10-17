# 设置cmake的最低版本和项目名称
cmake_minimum_required(VERSION 3.0)

# 设置项目的可执行文件输出的路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

# 增加调试
set(CMAKE_BUILD_TYPE "DEBUG")

# 设置项目库文件输出的路径
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

# 设置项目编译头文件搜索路径 -I
include_directories(${PROJECT_SOURCE_DIR}/src/include)
include_directories(${PROJECT_SOURCE_DIR}/example)

# 设置项目库文件搜索路径 -L
link_directories(${PROJECT_SOURCE_DIR}/lib)

add_subdirectory(src)
add_subdirectory(example)
add_subdirectory(test)