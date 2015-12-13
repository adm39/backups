#!/bin/sh

THEDBUSER="root"
THEDBPW="savage"
THEDATE=`date +%d%m%y%H%M`

mysqldump -u $THEDBUSER -p${THEDBPW} teamsavage | gzip -9 > /home/amit/backups/mysql-backups/teamsavage_${THEDATE}.sql.gz

tar -czf /home/amit/backups/frontend-backups/frontend_${THEDATE}.tar.gz /var/www/frontend

php /var/www/frontend/backupemail.php

find /home/amit/backups/mysql-backups/team* -mtime +1 -exec rm {} \;
find /home/amit/backups/frontend-backups/front* -mtime +1 -exec rm {} \;
