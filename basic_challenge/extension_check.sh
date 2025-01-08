#!/usr/bin/bash


dir=$1
ext=$2

 if [ -z "$dir" ] || [ -z "$ext" ]; then
	 echo " input parameter is empty"
	 exit
 fi

 
if [ ! -d "$dir" ] || [ ! -r "$dir" ]; then
              echo "directory doesnt exist / not readable "
	      exit
 fi



  find "$dir" -type f -name "*.$ext"
