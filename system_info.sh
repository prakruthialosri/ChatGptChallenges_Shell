#!/usr/bin/bash


user=`who am i | cut -f 1 -d " "`
date=`date`
echo " Welcome $user:$date from `pwd` "
