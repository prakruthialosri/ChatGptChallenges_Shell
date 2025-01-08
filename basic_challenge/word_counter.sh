#!/usr/bin/bash


word=$1
filename=$2


 if [ -z "$word" ] || [ -z "$filename" ]; then
	 echo " input parameter is empty"
	 exit
 fi

 
if [ ! -f "$filename" ] || [ ! -r "$filename" ]; then
              echo " file doesnt exist / not readable "
	      exit
 fi

 number=$(grep -ic $word $filename)
echo " number of time $word apprered in $file is $number"
