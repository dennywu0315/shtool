#!/bin/sh

YY=`date +%y`
MM=`date +%m`
DD=`date +%d`
BAK="$YY$MM$DD"_etc.tar.gz

if [ ! -d '/tmp/bak' ]
then
    mkdir "/tmp/bak"
fi
cd /tmp/bak

if [ -d '/tmp/test' ] 
then
    tar zcvf $BAK "/tmp/test"
else 
    echo "No folder to backup"
fi
