#!/usr/bin/bash

direc=$1
largestfile=$(ls -lS $direc |  grep -v  ^d  | sed '1d' | awk 'NR==1 {print "name:" $9 " "  "size:" $5}')
echo "largest file is :  $largestfile"
