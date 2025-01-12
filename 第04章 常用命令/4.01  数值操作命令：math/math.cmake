math(EXPR a 10*10 OUTPUT_FORMAT DECIMAL) # a = 100
message("a=10*10=" ${a})

math(EXPR b "0x7FFFFFFFFFFFFFFF + 0x7FFFFFFFFFFFFFFF") # b = -2
message("b=0x7FFFFFFFFFFFFFFF + 0x7FFFFFFFFFFFFFFF=" ${b})

math(EXPR c "16" OUTPUT_FORMAT HEXADECIMAL) # c = 0x10
message("c=16=" ${c})

math(EXPR d "~16" OUTPUT_FORMAT HEXADECIMAL) # d = 0xffffffffffffffef
message("d=~16=" ${d})

math(EXPR err "0xFFFFFFFFFFFFFFFF")
