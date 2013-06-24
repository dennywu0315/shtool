#!/bin/sh

cat tt|sed -e 's;http://;;' -e 's;/.*;;' -e '/^$/d' |sort|uniq -c |sort -rn|head -2
