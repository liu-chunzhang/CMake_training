cmake -E compare_files a/.gitkeep b/123.txt
if [ $? -ne 0 ]; then
    echo "Files are different"
else
    echo "Files are the same"
fi

cmake -E compare_files a/.gitkeep b/.gitkeep
if [ $? -ne 0 ]; then
    echo "Files are different"
else
    echo "Files are the same"
fi
