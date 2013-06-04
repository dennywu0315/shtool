#!/bin/sh
# Author: Denny Wu
# Subject: word frequency
# Usage: wf.sh [n] <input 

tr -cs A-Za-z\' '\n'|
    tr A-Z a-z |
        sort |
            uniq -c |
                sort -k1,1nr -k2 |
                    sed ${1:-25}q
