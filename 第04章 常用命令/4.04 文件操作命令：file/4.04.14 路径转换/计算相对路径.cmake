message("${CMAKE_CURRENT_LIST_FILE}")
# 原输出：C:/CMake-Book/src/ch004/file/计算相对路径.cmake
# 我的输出：/home/chunzhang/Desktop/CMake_construction/第4章 常用命令/4.04 文件操作命令：file/example.txt

file(RELATIVE_PATH res ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_LIST_FILE})
message("${res}") 
# 原输出：计算相对路径.cmake
# 我的输出：计算相对路径.cmake
