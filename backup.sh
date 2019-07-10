echo "`date` starting backup mysql"
$(dirname $0)/mysql.sh
echo "`date` finish backup mysql "

echo "`date` starting backup postgres"
$(dirname $0)/postgres.sh
echo "`date` finish backup postgres"
