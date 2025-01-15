cmake_minimum_required(VERSION 3.20)

project(MyProject)

# 包含src目录
include_directories(${CMAKE_SOURCE_DIR}/src)

# 创建lib目录，如果不存在的话
file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/lib)

# 添加静态库，并设置其输出目录为lib文件夹
add_library(mylib STATIC src/lib.c)
set_target_properties(mylib PROPERTIES ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/lib)

# 添加可执行文件并链接静态库
add_executable(MyProject main.c)
target_link_libraries(MyProject mylib)

# 设置可执行文件输出目录为主文件夹
set_target_properties(MyProject PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR})
