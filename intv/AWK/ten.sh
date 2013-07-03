#!/bin/sh

cat tt|awk '$2<30||$2>50{a[$1" "$2]+=$3}END{for (x in a) print x,a[x]}'  
