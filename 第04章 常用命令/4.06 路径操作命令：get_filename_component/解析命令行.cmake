get_filename_component(cmd "gedit 1.txt 2.txt" PROGRAM PROGRAM_ARGS args)
# 由于Ubuntu 22.04 LTS无法执行apt install notepad，故此处把原命令里的notepad改成了gedit

message("${cmd}") 
# 原输出：C:/Windows/System32/notepad.exe
# 我的输出：/usr/bin/gedit

message("${args}")
# 输出： 1.txt 2.txt
