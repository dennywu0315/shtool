#!/bin/sh
#编写shell脚本获取本机的网络地址。
#by DennyW

IP=`ifconfig eth0 |grep 'inet addr'| awk '{print $2}' |awk -F: '{print $2}'`
NETMASK=`ifconfig eth0 |grep 'inet addr'| awk '{print $4}' |awk -F: '{print $2}'`


echo "Net Add: $IP/$NETMASK"
