#!/bin/sh

cat 4.dat |awk '{x+=$2+$3;a[NR]=$2+$3}END{y=x/NR;for (i in a) {if (y<a[i]) z++} print z}'
