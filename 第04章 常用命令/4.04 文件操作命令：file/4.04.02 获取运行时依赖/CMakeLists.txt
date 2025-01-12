# 最低CMake版本要求
cmake_minimum_required(VERSION 3.20)

# 项目信息
project(MyProject)

# 设置动态库目录
set(dll_dir "${CMAKE_CURRENT_LIST_DIR}")

# 包含头文件目录
include_directories(${dll_dir})

# 添加可执行文件
add_executable(main_exe ${dll_dir}/main.c ${dll_dir}/a.c)

# 不需要链接库文件，因为a.c和main.c在同一目录下
# 链接库文件 (移除不必要的链接)
# target_link_libraries(main_exe ${dll_dir}/liba.so)  # 仅在有需要时

# 设置输出路径为上一级目录，并命名为output
set_target_properties(main_exe PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}
    OUTPUT_NAME output
)

# 获取运行时依赖项
install(CODE [[
	file(GET_RUNTIME_DEPENDENCIES
	    RESOLVED_DEPENDENCIES_VAR resolved
	    UNRESOLVED_DEPENDENCIES_VAR unresolved
	    EXECUTABLES ${CMAKE_CURRENT_LIST_DIR}/a.out
	    PRE_EXCLUDE_REGEXES kernel32.dll
	)
]])

# 输出解析结果
message("Resolved dependencies: ${resolved}")
message("Unresolved dependencies: ${unresolved}")
