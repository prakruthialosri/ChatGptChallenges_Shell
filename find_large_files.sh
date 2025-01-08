#!/usr/bin/bash

directory=$1
sizes=$2

if [ -z $directory  ] || [ -z $sizes ];then
	echo " Please check the input"
	exit 1
fi

if [ ! -e $directory ] || [ ! -r $directory ];then 
	echo "directory doesnt exist or not readable"
	exit 1
fi

byte=$(($sizes / 1024 * 1024))

echo "byte is $byte"


echo "$(find $directory -type f -size +"$byte"c)"
