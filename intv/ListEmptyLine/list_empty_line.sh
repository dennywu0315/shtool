#!/bin/sh

#1
cat tt | grep -n ^$ |awk -F: '{print $1}'

#2
cat tt | sed -n -e '/^$/='

#3
cat tt | awk '{if($0~/^$/)print NR}'
