#!/bin/sh
#用Shell编程，判断一文件是不是字符设备文件，如果是将其拷贝到 /dev 
#目录下。
#by DennyW

echo "input File name!"
read FILE

if [ -c $FILE ]
then
    cp -rp $FILE /tmp/test
    echo "moved $FILE to /tmp/test"
else 
    echo 'not C file or not exist'
fi
