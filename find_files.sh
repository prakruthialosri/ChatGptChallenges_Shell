#!/usr/bin/bash

trap 'echo "Command executed: $BASH_COMMAND"' DEBUG

directory=$1

if [ !  -d $directory ];then
 echo  "directory doesn't exists \n"
 exit

elif [ ! -r $directory ]; then
       echo "directory cant be readable \n"
       exit
else
textfiles=$(find $directory  -type f -name "*.txt")
fi

if [ -z "$textfiles" ]; then
	echo "No text file found"
	exit
fi

find $directory  -type f -name "*.txt" -exec stat --format="%n: %s bytes" {}  \;

