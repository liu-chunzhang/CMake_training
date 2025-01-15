cmake -E md5sum 123.txt
echo $?
cmake -E md5sum 456.txt
echo $?
cmake -E md5sum 123.txt 456.txt
echo $?
