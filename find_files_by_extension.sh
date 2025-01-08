#!/usr/bin/bash

directory=$1
ext=$2

if [ -z $directory  ] || [ -z $ext ];then
	echo " Please check the input"
	exit 1
fi

if [ ! -e $directory ] || [ ! -r $directory ];then 
	echo "directory doesnt exist or not readable"
	exit 1
fi

echo "$(find $directory -type f -name "*.$ext")"
