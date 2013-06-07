#!/bin/sh
#编写个shell脚本将当前目录下大于10K的文件转移到/tmp目录下 
#by DennyW

for FILE in `ls -al| awk '$5>10240 {print $9}'|grep -v sh`
do
    cp $FILE /tmp/test
done    

ls -al /tmp/test
echo "Done"
