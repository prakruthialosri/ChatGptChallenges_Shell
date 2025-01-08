#!/usr/bin/bash
#
direc=$1
find_string=$2
replace_string=$3


(find "$direc" -type f -exec sed "s/$find_string/$replace_string/g" {} \; )


