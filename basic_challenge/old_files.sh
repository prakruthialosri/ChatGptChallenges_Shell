#!/usr/bin/bash


dir=$1


 if [ -z "$dir" ]; then
	 echo " input parameter is empty"
	 exit
 fi

 
if [ ! -d "$dir" ] || [ ! -r "$dir" ]; then
              echo "directory doesnt exist / not readable "
	      exit
 fi



  find "$dir" -type f -mtime -7
