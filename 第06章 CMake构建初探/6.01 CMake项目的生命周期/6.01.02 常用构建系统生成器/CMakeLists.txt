cmake_minimum_required(VERSION 3.20)

# 定义项目名称和版本
project(mylib VERSION 1.0.0)

# 设置包的联系人/维护者信息，在Ubuntu 22.04 LTS下使用命令cpack -G DEB是必须添加的！
set(CPACK_PACKAGE_CONTACT "your_email@example.com")

# 添加静态库目标mylib，其源代码包含lib.c
add_library(mylib STATIC lib.c)

# 安装mylib构建目标
install(TARGETS mylib)

# 打包
set(CPACK_PACKAGE_NAME "mylib")
include(CPack)
