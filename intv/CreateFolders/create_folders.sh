#!/bin/sh
#设计一个Shell程序，在/userdata目录下建立50个目录，即user1～user50
#，并设置每个目录的权限，其中其他用户的权限为：读；文件所有者的权限为：
#读、写、执行；文件所有者所在组的权限为：读、执行。
#by DennyW

if [ ! -d /tmp/userdata ]
then
    mkdir /tmp/userdata
else
    echo "/tmp/userdata exists..move on..."
fi 

cd /tmp/userdata

for i in {1..10}
do
    if [ ! -d user$i ]
    then
        mkdir -m 754 user$i
        echo "User$i"
    else
        echo "user$i already exists!"
    fi
done

