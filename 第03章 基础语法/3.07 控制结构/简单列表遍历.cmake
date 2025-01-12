foreach(x A;B;C D E F)  # 构建一个临时列表
    message("x: ${x}")
endforeach()

message("---")

set(list X;Y;Z)		    # 设置一个变量存储一个列表
foreach(x ${list})	    # 从变量读取列表
    message("x: ${x}")
endforeach()
