#!/usr/bin/bash

dir=$1

if [ -z "$dir" ];then
	echo "please provide input"
	exit 1
elif [ ! -d "$dir" ];then
	echo " directory : $dir doesn't exist"
	exit 1
elif [ ! -r "$dir" ];then
	echo " directory : $dir is not readable"
fi

find  "$dir" -type f -name "*.sh" -exec wc -l {} \;
