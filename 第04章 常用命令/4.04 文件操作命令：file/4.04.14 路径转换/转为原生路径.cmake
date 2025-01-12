file(TO_NATIVE_PATH "a/1.txt;b/2.txt" res)
message("${res}") 
# 原输出：a\1.txt;b\2.txt
# 我的输出：a/1.txt;b/2.txt
