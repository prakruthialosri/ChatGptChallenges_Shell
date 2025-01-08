#!/usr/bin/bash

directory=$1
string=$2

if [ -z "$directory"  ] || [ -z "$string" ];then
	echo " Please check the input"
	exit 1
fi

if [ ! -d "$directory"  ] || [ ! -r "$directory" ];then
	echo "$directory is not readble"
	exit 1
fi

grep -l "$string" $directory/*
