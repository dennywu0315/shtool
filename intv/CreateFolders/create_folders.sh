#!/bin/sh

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

