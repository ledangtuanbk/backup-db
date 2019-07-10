echo "`date` starting backup container $1 database $2"
docker exec -t $1 mkdir -p /backup/$2
docker exec -t $1 pg_dump -U postgres --no-owner -Fc $2 -f /backup/$2/dump_`date +%d-%m-%Y"_"%H_%M_%S`.dmp 
echo "`date` finish backup container $1 database $2"
