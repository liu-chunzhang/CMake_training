function(print_list l)   # 定义了一个名为print_list的函数，并且该函数接受一个参数l，这个参数是一个列表。
    string(JOIN " | " res ${${l}}) # 使用string(JOIN)命令将列表l中的元素连接成一个字符串，中间用" | "分隔，并将结果存储在变量res中。${${l}}表示取列表l的值。
    message("${res}") # 使用message命令输出变量res的值，即连接后的字符串。
endfunction()
