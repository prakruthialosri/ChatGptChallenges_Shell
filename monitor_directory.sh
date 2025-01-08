
while true
do
no_of_files=$(ls -lt | wc -l)
prev=$no_of_files
echo "No o files are : $no_of_files"
sleep 30
no_of_files=$(ls -lt | wc -l)
if [ $prev -lt $no_of_files ];then
	no_of_file=$((no_of_files - $prev ))
	name=$(ls -lt | sed '1d' | head -$no_of_file | awk '{ print $9}')
	echo " there is new files in direc :$no_of_file: $name"
fi
done
