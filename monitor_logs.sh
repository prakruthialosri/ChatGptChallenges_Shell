#!/usr/bin/bash

logfile=$1

trap "echo Monitoring stopped; exit" SIGINT 

if    [ -z "$logfile" ];then
        echo " please provide log file"

elif  [ ! -e "$logfile" ];then
	echo " file doesnt exist"
	exit
elif [ ! -r "$logfile" ];then
	echo "file is not readable"
	exit
fi	


	tail -f $logfile | grep -iB 1 ERROR	
