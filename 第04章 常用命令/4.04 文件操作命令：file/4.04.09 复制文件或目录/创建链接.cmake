cmake_minimum_required(VERSION 3.20)
# 路径变量
set(ORIGINAL_FILE "${CMAKE_CURRENT_LIST_DIR}/original_file.txt")
set(HARDLINK_FILE "${CMAKE_CURRENT_LIST_DIR}/hardlink_to_original")

# 创建硬链接
file(CREATE_LINK ${ORIGINAL_FILE} ${HARDLINK_FILE})

# 输出结果
message("Created hard link: ${HARDLINK_FILE} -> ${ORIGINAL_FILE}")

# 路径变量
set(SOFTLINK_FILE "${CMAKE_CURRENT_LIST_DIR}/softlink_to_original")

# 创建软链接
file(CREATE_LINK ${ORIGINAL_FILE} ${SOFTLINK_FILE} SYMBOLIC)

# 输出结果
message("Created hard link: ${SOFTLINK_FILE} -> ${ORIGINAL_FILE}")
