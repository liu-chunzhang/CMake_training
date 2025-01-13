set(path example.txt)
cmake_path(ABSOLUTE_PATH path OUTPUT_VARIABLE res)
message("${res}") 
# 原输出：C:/CMake-Book/src/ch004/cmake_path/example.txt
# 我的输出：/home/chunzhang/Desktop/CMake_construction/第04章 常用命令/4.05 路径操作命令：cmake_path/example.txt
