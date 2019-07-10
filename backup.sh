dir_name=$(dirname $0)
echo "$(date) starting backup mysql"
$dir_name/mysql.sh
echo "$(date) finish backup mysql "

echo "$(date) starting backup postgres"
$dir_name/postgres.sh
echo "$(date) finish backup postgres"
