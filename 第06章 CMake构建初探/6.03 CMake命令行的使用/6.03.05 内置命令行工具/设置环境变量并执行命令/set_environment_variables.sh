#!/bin/bash

# 创建和进入构建目录
mkdir -p build
cd build

# 生成构建文件
cmake -G Ninja ..

# 从CMakeCache.txt文件中读取并行级别
PARALLEL_LEVEL=$(grep "CMAKE_BUILD_PARALLEL_LEVEL:" CMakeCache.txt | cut -d '=' -f2)

# 使用读取到的并行级别设置环境变量并运行构建
cmake -E env CMAKE_BUILD_PARALLEL_LEVEL=$PARALLEL_LEVEL cmake --build .
