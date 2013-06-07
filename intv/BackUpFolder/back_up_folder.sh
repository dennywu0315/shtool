#!/bin/sh
#设计一个shell程序，在每月第一天备份并压缩/etc
#目录的所有内容，存放在/root/bak目录里，且文件名为如下形式yymmdd_etc，yy为年，mm为月，dd
#为日。Shell程序fileback存放在/usr/bin目录下。
#by DennyW

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
