dir_backup=/mnt/backup/mysql
mkdir -p $dir_backup

databases=(bvp_upgrade bvy_sms bvy_upgrade bvy_upgrade_demo bvy_upgrade_stable device_management device_management_demo hr_management hr_management_release isofh_web nmc web_cty_isofhcare isofhcare_sms)

for i in "${databases[@]}";
do 
site_name=$i
echo "$(date) start backup $site_name"
mkdir -p $dir_backup/$site_name
mysqldump -u root -pIsora@123 nmc > $dir_backup/$site_name/$site_name"_"$(date -d "today" +"%Y%m%d%H%M%S").sql
echo "$(date) end backup $site_name"
done
