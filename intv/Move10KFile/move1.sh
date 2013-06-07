#!/bin/sh

for FILE in `ls -al| awk '$5>10240 {print $9}'|grep -v sh`
do
cp $FILE /tmp/test
done    

ls -al /tmp/test
echo "Done"
