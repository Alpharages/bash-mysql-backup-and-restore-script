#!/bin/bash
host=
user=
passwd=
db=
Port=
DATE=`date +%d-%m-%Y-%H`
sslPath=
FileName=$db"_"$DATE
name=
dpath="/var/www/backups/$name"

mysqldump -h $host -P$Port -u $user -p$passwd --ssl-ca=$sslPath --set-gtid-purged=OFF $db > $dpath/$FileName.sql
echo "DB backup is done"
DATE=$(date --date="15 days ago" +"%d"-"%m"-"%Y-%H")
DBname=$db"_"$DATE
rm $dpath/$DBname.sql
