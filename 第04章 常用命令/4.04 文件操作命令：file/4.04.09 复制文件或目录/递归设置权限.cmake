cmake_minimum_required(VERSION 3.19)
# 此命令出现得较晚，3.19版本以后才有，值得注意。

# 定义目标目录
set(TARGET_DIR "${CMAKE_CURRENT_LIST_DIR}/my_folder")

# 更改目录及其所有内容的权限
file(CHMOD_RECURSE ${TARGET_DIR} PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE)

# 输出更改权限的信息
message("Changed permissions recursively for: ${TARGET_DIR}")

#[=[
执行此脚本前使用ls获取my_folder的状态信息
-rw-rw-r-- 1 chunzhang chunzhang 4  1月 12 20:31 my_folder/123.txt
-rw-rw-r-- 1 chunzhang chunzhang 4  1月 12 20:31 my_folder/456.txt
执行此脚本后使用ls获取my_folder的状态信息
-rwxr-xr-x 1 chunzhang chunzhang 4  1月 12 20:31 my_folder/123.txt
-rwxr-xr-x 1 chunzhang chunzhang 4  1月 12 20:31 my_folder/456.txt
]=]
