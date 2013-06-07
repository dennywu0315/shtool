#!/bin/sh

IP=`ifconfig eth0 |grep 'inet addr'| awk '{print $2}' |awk -F: '{print $2}'`
NETMASK=`ifconfig eth0 |grep 'inet addr'| awk '{print $4}' |awk -F: '{print $2}'`


echo "Net Add: $IP/$NETMASK"
