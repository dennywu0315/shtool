#!/bin/sh

find . -size +10k |grep -v sh |xargs -i cp {} /tmp/test/
#or `find . -size +10k |grep -v sh |xargs -I {} cp {} /tmp/test/`
