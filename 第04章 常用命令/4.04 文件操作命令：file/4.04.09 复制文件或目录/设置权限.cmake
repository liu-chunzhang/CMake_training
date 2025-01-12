cmake_minimum_required(VERSION 3.0)

# 定义文件路径
set(FILE_PATH "${CMAKE_CURRENT_LIST_DIR}/my_file.txt")

# 更改文件权限，使其可读、可写、可执行
file(CHMOD ${FILE_PATH} 
	PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_WRITE GROUP_EXECUTE WORLD_READ WORLD_EXECUTE)

# 输出更改权限的信息
message("Changed permissions for: ${FILE_PATH}")

#[=[
执行此脚本前使用ls获取my_file.txt的状态信息
-rw-rw-r-- 1 chunzhang chunzhang 8  1月 12 20:24 my_file.txt
执行此脚本后使用ls获取my_file.txt的状态信息
-rwxrwxr-x 1 chunzhang chunzhang 8  1月 12 20:21 my_file.txt
]=]
