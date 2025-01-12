cmake_minimum_required(VERSION 3.20)

file(CONFIGURE OUTPUT out3.txt
    CONTENT "CMAKE_VERSION: @CMAKE_VERSION@
#cmakedefine A"
    @ONLY
)
# out3.txt文件的最终内容为：
# CMAKE_VERSION: 3.22.1
# /* #undef A */


set(A "the value of A")

file(CONFIGURE OUTPUT out4.txt
    CONTENT "CMAKE_VERSION: @CMAKE_VERSION@
#cmakedefine A"
    @ONLY
)
# out4.txt文件的最终内容为：
# CMAKE_VERSION: 3.22.1
# #define A
