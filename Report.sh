#Read the peak time from the user 
start_time=$1
end_time=$2


#declararion started
logfile="httpd.logs"
#this is log file generated from script
Logfile="Deatails.log"
#thi is the Report containing  good results.
Report="Report.txt"
succ_count=0
failure_count=0
#declaration ended
echo "clientid	time	 status" > "$Report"


function printlog
{
  string=$1	
  timestamp=$(date)
  echo " $timestamp : $string" >> "$Logfile"
}

function printReport
{  
  logmessage=$1
  echo "$logmessage" >>"$Report"
}

function usage
{
echo "Please enter the start  time and end time  in the hh:mm format ex: 10:30 11:00"
exit 1

}

if [ ! -e "$logfile" ];then
	echo "Log file $logfile is not created yet"
	exit 1
fi

if [[ "$start_time" =~ ^(0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$ ]] &&  [[ "$end_time" =~ ^(0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$ ]]; then
	    printlog "Fetching all the logs between  $start_time and  $end_time "
    else
	    printlog "Invalid time format!"
	    usage
fi


while read -r line; do
  timestamp=$(echo "$line" | grep -oP '\[\K[^]]+')
  log_time=$(echo "$timestamp" | awk -F'[: ]' '{print $2":"$3":"$4}')
  status=$(echo "$line" | awk -F "|" '{print $6}')
  client_address=$(echo "$line" | awk -F "|" '{print $1}')
  if [[ "$log_time" > "$start_time" && "$log_time" < "$end_time" ]] && [ $status == 200 ]; then
    succ_count=$((succ_count + 1))
    printlog "Found the log between $start_time and $end_time with good status: $succ_count"." $log_time : $status : $client_address"
    printReport "$client_address $log_time $status"
  else
    failure_count=$((failure_count + 1))
    printlog "No Match $failure_count :  $log_time : $status : $client_address"

  fi

done < "$logfile"


#mail the sucess logs
#`mailx -s "Find the Sucess log for  " -a $Report  "prakruthi.alosri@gmail.com"`

