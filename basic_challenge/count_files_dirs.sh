#!/usr/bin/bash


dir=$1

directory=$(ls -l "$dir" | grep ^d | wc -l)
files=$(ls -l "$dir" | grep -v ^d | wc -l)

echo " number of files $files and directory $directory"
