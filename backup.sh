#!/bin/sh

THEDBUSER="root"
THEDBPW="savage"
THEDATE=`date +%m-%d-%y_%H%M`

mysqldump -u $THEDBUSER -p${THEDBPW} teamsavage | gzip -9 > /home/amit/backups/mysql-backups/teamsavage_${THEDATE}.sql.gz

tar -czPf /home/amit/backups/frontend-backups/frontend-${THEDATE}.tar.gz --exclude-vcs /var/www/frontend

php /var/www/frontend/backupemail.php

find /home/amit/backups/mysql-backups/teamsavage* -mtime +1 -exec rm {} \;
find /home/amit/backups/frontend-backups/frontend* -mtime +1 -exec rm {} \;
