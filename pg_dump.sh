CONTAINER=$1
DATABASE=$2
echo "$(date) starting backup container $CONTAINER database $DATABASE"
docker exec -t $CONTAINER mkdir -p /backup/$DATABASE
docker exec -t $CONTAINER pg_dump -U postgres --no-owner -Fc $DATABASE -f /backup/$DATABASE/dump_$(date +%d-%m-%Y"_"%H_%M_%S).dmp 
echo "$(date) finish backup container $CONTAINER database $DATABASE"
