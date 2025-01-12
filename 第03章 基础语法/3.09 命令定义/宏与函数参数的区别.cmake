macro(my_macro p)
    message("-- my_macro --")

    if(p)
        message("p为真") # 在这个调用中，ON和x被传递给宏my_macro。但在宏的上下文中，p只是一个占位符，并没有被解析为布尔值。由于if(p)检查的是p是否定义，但宏的参数处理并不会自动解析p的布尔值，所以这个条件实际上是假的。
    endif()

    set(i 1)
    message("ARGV i: ${ARGV${i}}") # 不能用变量嵌套引用语法访问参数
endmacro()

function(my_func p)
    message("-- my_func --")

    if(p)
        message("p为真")
    endif()

    set(i 1)
    message("ARGV i: ${ARGV${i}}")
endfunction(my_func)

my_macro(ON x)
my_func(ON x)
