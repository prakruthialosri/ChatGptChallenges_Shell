#/usr/bin/bash

file=$1


if  [ -z $file ];then
	echo "please provide input"
	exit`:
elif [ ! -e $file ];then
	echo "$file doesnt exists "
	exit 1
elif [ ! -r $file ];then
	echo "$file is not readable"
	exit 1
else 
	echo "file $file exists and its readable"
fi

if [ ! -w $file ];then
	echo "$file is not writable"
elif [ ! -x $file ];then
	echo "$file is not executable"
else
	echo "$file is readable , writable and executable"
fi


