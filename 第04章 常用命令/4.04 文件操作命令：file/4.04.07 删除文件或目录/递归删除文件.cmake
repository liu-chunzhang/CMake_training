# 遍历路径中的所有名为x0的文件或目录
file(GLOB_RECURSE x0_paths
    LIST_DIRECTORIES true
    RELATIVE "${CMAKE_CURRENT_LIST_DIR}"
    "${CMAKE_CURRENT_LIST_DIR}/**/x0"
)

# 输出匹配结果
foreach(x0_path ${x0_paths})
    message("Removing: ${x0_path}")
    # 非常危险的命令！会删除这个文件所在的层次的全部文件！也就是清空此文件所在的文件夹！
    file(REMOVE_RECURSE "${CMAKE_CURRENT_LIST_DIR}/${x0_path}")
endforeach()

# 执行样例：在该cmake脚本所在的当前文件夹下
#[=[
> mkdir a
> mkdir a/b
> mkdir a/b/c
> echo 456 > x0
> echo 123 > a/x0
> echo 123 > a/b/x1
> echo 123 > a/b/c/x2
> tree
.
├── 递归删除文件.cmake
├── 删除文件.cmake
├── a
│   ├── b
│   │   ├── c
│   │   │   └── x2
│   │   └── x1
│   └── x0
└── x0
]]
> cmake -P 递归删除文件.cmake
Removing: a/b
Removing: a/b/c
Removing: a/x0
> tree
.
├── 递归删除文件.cmake
├── 删除文件.cmake
├── a
└── x0
]=]
