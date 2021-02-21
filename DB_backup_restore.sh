#!/bin/bash
host=
user=
passwd=
db=
Port=
sslPath=
FileName=""
dpath="/var/www/backups/cims_staging_backup_DB"

mysql -h $host -P$Port -u $user -p$passwd --ssl-ca=$sslPath $db < $dpath/$FileName.sql

echo "DB backup restore is done"
