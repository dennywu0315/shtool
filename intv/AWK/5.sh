#!/bin/sh

#1
awk 'ARGIND==1{a[$1]=$2}ARGIND==2{print $0,a[$1]}' 51.dat 52.dat 
#2
join 51.date 52.dat |sort -k2
