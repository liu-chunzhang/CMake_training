set(regex "[abc]+") # [abc]+可以匹配任何包含至少一个a、b或c字符的字符串，无论这些字符在字符串中的位置如何。

string(REGEX MATCH ${regex} res aaa)
message("${res}") # 输出：aaa

string(REGEX MATCH ${regex} res aaa bbb ccc abc)
message("${res}") # 输出：aaabbbcccabc

string(REGEX MATCH ${regex} res aaad)
message("${res}") # 输出：aaa

string(REGEX MATCH ${regex} res bcd aaa)
message("${res}") # 输出：bc

set(regex ^[abc]+$) # ^[abc]+$ 要求整个字符串只能由a、b或c字符组成，且不能包含其他字符。

string(REGEX MATCH ${regex} res aaa)
message("${res}") # 输出：aaa

string(REGEX MATCH ${regex} res aaa bbb ccc abc)
message("${res}") # 输出：aaabbbcccabc

string(REGEX MATCH ${regex} res aaad)
message("${res}") # 输出空

string(REGEX MATCH ${regex} res bcd aaa)
message("${res}") # 输出空
