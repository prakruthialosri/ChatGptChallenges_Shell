#!/usr/bin/bash
direc=$1

if [ -d "$direc" ];then
	#echo "directory exists $direc"
	nooffile=$(ls | wc -l)
	echo "directory exists $direc number  of files are $nooffile"
else 
	mkdir $direc
	echo "directory created $direc"
fi
