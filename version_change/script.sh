cp ./project/abc/1.0/code/* -t ./project/abc/2.0/code

find ./project/abc/2.0/code -type f -exec sed -i 's/version:1.0/version:2.0/' {} \;

