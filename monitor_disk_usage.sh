#!/usr/bin/bash

threshold=$1

#df -h  |  sed '1d' | awk -v th="$threshold" '{gsub("%", "",$5); if ($5 > th) print $1   "is almost full-->" $5i "%"}'
#df -h | sed '1d' | awk -v th="$threshold" '{gsub("%", "", $5); if ($5 > th) print $1 " is almost full --> " $5 "%"}'i
#
df -h  | awk '{ print $1 ":" $5 } ' | sed 's/%//' | awk  -F : -v th="$threshold" ' $2 >th {print $1  " " "is almost full-->" $2  " " "%"}' | sed '1d'

