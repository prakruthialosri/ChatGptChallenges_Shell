#/usr/bin/bash

file=$1
word=$2
replace=$3

sed "s/$word/$replace/gi" $file
