依次执行这些命令及对应输出如下。此处是用CodeBlocks代替Visual Studio的命令。
> mkdir build
> cd build
> cmake -G CodeBlocks ..
-- The C compiler identification is GNU 13.1.0
-- The CXX compiler identification is GNU 13.1.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /usr/bin/c++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /home/chunzhang/Desktop/CMake_construction/第06章 CMake构建初探/6.04 使用Visual Studio打开CMake项目/build
> cmake --build .
[4/4] Linking C executable ../MyProject
如此即得到了在当前目录下的可执行文件MyProject。
