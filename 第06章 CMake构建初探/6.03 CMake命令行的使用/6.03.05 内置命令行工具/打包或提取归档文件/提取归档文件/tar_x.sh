mkdir -p new
mv ./123.tar.gz new
cd new
cmake -E tar xvf 123.tar.gz
