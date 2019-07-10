dir_backup=/mnt/backup
echo "`date` start  delete old backup file "
find '/mnt/backup' -mtime +6 -type f -delete
echo "`date` end"
