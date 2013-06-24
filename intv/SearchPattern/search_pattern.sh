#!/bin/sh

cat tt | sed -n -e '/FATAL/p' -e '/WARNING/p' |awk -F';' '{print $5}'
#cat tt| grep -v IGNORE |awk -F';' '{print $5}'
