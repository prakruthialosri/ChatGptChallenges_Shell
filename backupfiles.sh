
backupfolder=$2
sourcefolder=$1
#timestamp=$(date +"%y:%m:%d:%H:%M:%S")



Log()
{
message=$1
echo  "$(date +"%y:%m:%d:%H:%M:%S"):$message"

}

if [  -z "$backupfolder" ] || [ -z "$sourcefolder" ];then 
	"echo please provide input"
	exit 1
fi

  Log "Program started"
  tarfile="$backupfolder/backup_$(date +%F).tar.gz"

  find "$sourcefolder" -type f -mtime +7 -exec tar -rf "$tarfile" -C "$sourcefolder" {} +
  gzip "$tarfile"

