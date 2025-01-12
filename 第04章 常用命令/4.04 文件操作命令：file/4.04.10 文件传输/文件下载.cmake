cmake_minimum_required(VERSION 3.20)

# 原code给的下载地址会失败，我改了下载地址，是我的一处仓库的README.md。
file(DOWNLOAD "https://raw.githubusercontent.com/liu-chunzhang/physical_chemistry_training/main/README.md" README.md 
	SHOW_PROGRESS
	STATUS status
	LOG log.txt
	TIMEOUT 30
	EXPECTED_MD5 09e082c23d2ab5517edb036f1b109b1e)
file(READ README.md res LIMIT 500)

message("${status}") # 输出：0;"No error"
message("${res}")

#[=[ 输出：
# physical_chemistry_training
This repository stores materials for the physical chemistry training I conducted for undergraduate students at the School of Environment Science and Engineering, Shandong University, at the end of the first semester in 2024.

本库存储了2024年第一学期末我在山东大学环境科学与工程学院对本科生进行的物理化学培训的资料。

This course provides a comprehensive summary of Physical Chemistry (6th Edition) from Tianjin University, wit
]=]

file(DOWNLOAD www.example.com/不存在.txt STATUS status)
message("${status}")
# 输出：22;"HTTP response code said error"
