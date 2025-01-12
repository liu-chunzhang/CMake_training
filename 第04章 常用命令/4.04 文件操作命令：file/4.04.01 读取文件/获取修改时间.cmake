file(TIMESTAMP example.txt res)
message("${res}") # 输出：2023-11-05T15:26:00

file(TIMESTAMP example.txt res "%Y年%m月%d日 %H:%M:%S UTC" UTC)
message("${res}") # 输出：2023年11月05日 07:26:00 UTC
