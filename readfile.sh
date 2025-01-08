
while read line
do 
	empname=$(echo $line | cut -f 1 -d " ")
	echo "empname os $empname"

done < server.log
