# 请先使用NMake生成 ch001/动态库 项目
# 我使用Ubuntu 22.04.1 LTS编译，该操作系统不支持Windows OS下的NMake，所以用Ninja代替NMake

# 首先，保证自己安装了Ninja，运行命令行
# sudo apt-get update
# sudo apt-get install build-essential cmake ninja-build

# 然后，创建并进入构建目录（如果尚未创建）：
# mkdir build
# cd build

# 接着，运行 CMake 配置命令，指定 Ninja 作为生成器：
# cmake -G Ninja ..

# 最后，运行构建命令：
# ninja

# 如此，在build上一级目录下，已构建好名为output的可执行文件，此时才可以运行当前脚本！

set(dll_dir "${CMAKE_CURRENT_LIST_DIR}")

file(GET_RUNTIME_DEPENDENCIES
    RESOLVED_DEPENDENCIES_VAR resolved
    UNRESOLVED_DEPENDENCIES_VAR unresolved
    EXECUTABLES ${dll_dir}/output	# 此处，原code在Windows编译，所以可执行文件名是main.exe，而我在Ubuntu 22.04 LTS下编译main.c和a.c，选择生成的可执行文件名为output。
    PRE_EXCLUDE_REGEXES kernel32.dll
)

message("RESOLVED_DEPENDENCIES_VAR: ${resolved}")
# 原输出：C:/CMake-Book/src/ch004/file/../../ch001/动态库/liba.dll
# 我的输出：/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2;/lib/x86_64-linux-gnu/libc.so.6
message("UNRESOLVED_DEPENDENCIES_VAR: ${unresolved}")
# 原输出空
# 我的输出也是空
