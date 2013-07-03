#!/bin/sh

cat 2|awk '{a[$1]+=$2;b[$1]++}END{for (i in a)print i,a[i]/b[i],a[i]}'
