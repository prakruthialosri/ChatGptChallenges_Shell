#!/usr/bin/bash

file=$1
if [ ! -e "$file" ] || [ ! -r "$file" ] || [ -z "$file" ];
then
	echo " please check whether file is present and redable or not passed filename as parameter"
	exit
fi

awk '{print NR ":" $0}' $file
