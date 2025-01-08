#!/usr//bin/bash


file=$1
declare -A assoc_array


#IFS=' '

while read -r line
do

for word in $line
do
	 assoc_array["$word"]=$((assoc_array["$word"] + 1))

done

done < "$file"


for key  in ${!assoc_array[@]}
do
	echo "$key : ${assoc_array["$key"]}"
done

