cmake_path(SET x NORMALIZE "")
message("${x}") # 输出：

cmake_path(SET x NORMALIZE "/a///b")
message("${x}") # 输出：/a/b

cmake_path(SET x NORMALIZE "./a/./b")
message("${x}") # 输出：a/b

cmake_path(SET x NORMALIZE "a/../b")
message("${x}") # 输出：b

cmake_path(SET x NORMALIZE "/../a")
message("${x}") # 输出：/a

cmake_path(SET x NORMALIZE "../")
message("${x}") # 输出：..

cmake_path(SET x NORMALIZE "./")
message("${x}") # 输出：.
