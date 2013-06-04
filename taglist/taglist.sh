#!/bin/sh
# Author: Denny Wu
# Subject: resolve html/SGML/XML
# Usage: taglist.sh xml-file

cat "$1" |
    tr ' (){}[]' '\n\n\n\n\n\n\n' |
        egrep '>[^<>]+</' |
            awk -F'[<>]' -v FILE="$1" \
                '{printf("%-31s\t%-15s\t%s\n",$3,$2,FILE)}'|
                    sort |
                        uniq -c|
                            sort -k2,2 -k3,3 |
                                awk '{
                                        print ($2 == Last) ? ($0 "<----") :$0
                                        Last = $2
                                    }'
            
