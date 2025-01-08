#!/usr/bin/bash

logfile=$1

if [ -z "$logfile" ];
then 
	echo " Please provide logfile "
	exit 1

elif [ ! -e "$logfile" ];
	then
		echo " file doesnt exist : $logfile"
		exit 1

elif [ ! -r "$logfile" ];
then
	echo "file is not readable "
	exit 1

fi

no_of_lines=$(wc -l < "$logfile")
no_of_errors=$(grep -ic "ERROR" "$logfile")
words=$(tr -cs '[:alnum]' '[\n*]' < "$logfile" | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr | head -n 5)


echo " no of line : $no_of_lines "
echo " no of line containing error $no_of_errors "
echo " no of line containing error $words"
