cmake_minimum_required(VERSION 3.20)

set(on "OFF")

if(on)			# 这里的if-else-endif是检查变量是否存在和有效（类似于检查指针是否为非空指针）
    message("ON")
else()
    message("OFF")
endif()

if(${on})		# 这里的if-else-endif是检查变量的实际值并将其解释为布尔值（类似于检查指针所指向的值是否可以隐式地转化为0）
    message("ON")
else()
    message("OFF")
endif()

#[[有点类似于，在C++内定义一个整形变量B并初始化为0，然后定义一个指针A，它指向B的地址，虽然A的内容是B的地址不是空指针，但这不妨碍其指向了一个可以转化为false的变量。]]
