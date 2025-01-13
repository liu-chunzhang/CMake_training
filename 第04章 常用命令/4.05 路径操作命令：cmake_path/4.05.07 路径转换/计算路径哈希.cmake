set(x "./a/")
cmake_path(NORMAL_PATH x)
message(${x})

set(x "./a/b/..")
cmake_path(NORMAL_PATH x)
message(${x})

set(path ./a/)
cmake_path(HASH path res)
message("${res}") # 输出：ff441a76e26ca1d4

set(path ./a/b/..)
cmake_path(HASH path res)
message("${res}") # 输出：ff441a76e26ca1d4
