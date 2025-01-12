set(x a;b;c;d;c)

list(FIND x c res)
message("${res}") # 输出：2；只返回搜索到的第一个指定元素的位置索引

list(FIND x e res)
message("${res}") # 输出：-1
