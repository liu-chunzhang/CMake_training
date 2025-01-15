tree -la
cmake -E copy_if_different a/123.txt b/123_another.txt
ls -la b/123_another.txt
tree -la
echo 456 > a/123.txt
tree -la
cmake -E copy_if_different a/123.txt b/123_another.txt
tree -la
ls -la b/123_another.txt
