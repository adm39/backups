# backups
Backups for frontend folder & MySQL

Backups are made every hour, on N:00 it backs up & N:01 it pushes to git
  - m h  dom mon dow   command
  - 0 * * * * /home/amit/backup.sh
  - 01 * * * * /home/amit/backup2git.sh

What is backed up?
  - frontend (/var/www/frontend)
  - mysql database 
  - scripts 
