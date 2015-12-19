#!/bin/sh
THEDATE=`date +%m-%d-%y_%H:%M`

cd /home/amit/backups/
git add . 
git commit -a -m "Backup - ${THEDATE}"
git push git@github.com:adm39/backups.git master
