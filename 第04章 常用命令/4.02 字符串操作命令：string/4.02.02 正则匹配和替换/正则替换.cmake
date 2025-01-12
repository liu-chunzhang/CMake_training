# 将a、b、c组成的部分替换为-
string(REGEX REPLACE "[abc]+" "-" res adabc dccc)
message("${res}") # 输出：-d-d-

# 将由a、b、c组成的部分用括号括起
string(REGEX REPLACE "[abc]+" "(\\0)" res adabc dccc)
#[=[
在CMake中，\\0表示整个匹配到的子字符串。用括号包围意味着匹配到的部分将被替换成它本身并带有圆括号。
]=]
message("${res}") # 输出：(a)d(abc)d(ccc)

# 将长度至少为2的由a、b、c组成的部分的第一个字母用括号括起
string(REGEX REPLACE "([abc])([abc]+)" [[(\1)\2]] res adabcdccc) 
#[=[
 [[\(\1)\2]]：这是替换字符串，表示将整个匹配到的内容替换成特定格式：
	\1：引用第一个捕获组的内容。
	\2：引用第二个捕获组的内容。
	由于CMake要求转义字符进行转义，所以使用了双重方括号。
]=]
message("${res}") # 输出：ad(a)bcd(c)cc
