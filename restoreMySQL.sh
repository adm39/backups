#!/bin/sh
 echo "This script will restore a backup."
 echo "Enter the date of the backup file (12-12-12)"
 read date
 echo "Enter the time for the backup file (0000-2359)"
 read time

THEDATE=$date'_'$time
THEDBUSER="root"
THEDBPW="savage"

cp /home/amit/backups/mysql-backups/teamsavage_${THEDATE}.sql.gz /home/amit/restore/

gunzip /home/amit/restore/teamsavage_${THEDATE}.sql.gz

mysqldump -u $THEDBUSER -p${THEDBPW} teamsavage < /home/amit/restore/teamsavage_${THEDATE}.sql

rm -rf /home/amit/restore/teamsavage_${THEDATE}.sql
echo "MySQL database restored!"
