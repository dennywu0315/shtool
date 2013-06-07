#!/bin/sh

echo "input File name!"
read FILE

if [ -c $FILE ]
then
    cp -rp $FILE /tmp/test
    echo "moved $FILE to /tmp/test"
else 
    echo 'not C file or not exist'
fi
