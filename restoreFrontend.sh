#!/bin/sh
 echo "This script will restore a backup."
 echo "Enter the date of the backup file (12-12-12)"
 read date
 echo "Enter the time for the backup file (0000-2359)"
 read time

THEDATE=$date'_'$time

cp /home/amit/backups/frontend-backups/frontend-${THEDATE}.tar.gz /home/amit/restore/ 

#cd /home/amit/restore/

tar -xzf /home/amit/restore/frontend-${THEDATE}.tar.gz -C /home/amit/restore

rm -rf /var/www/frontend/
cd /home/amit/restore/var/www/
mv frontend /var/www/

rm -rf /home/amit/restore/*

echo "Frontend restored!"
