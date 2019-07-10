$dir_name=$(dirname $0)
$dir_name/pg_dump.sh postgres_dev isofhcare
$dir_name/pg_dump.sh sonar_postgres sonar
$dir_name/pg_dump.sh postgres device_vm
$dir_name/pg_dump.sh postgres device_demo
$dir_name/pg_dump.sh postgres isofhcare
$dir_name/pg_dump.sh postgres mosaiq
$dir_name/pg_dump.sh postgres qms_upgrade
$dir_name/pg_dump.sh postgres ykhn

