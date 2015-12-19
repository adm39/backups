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

What does each script do?
  - backup.sh: backs up /var/www/frontend & mysql tables ; autodeletes and backups +1 old
  - backup2git.sh: pushes the backups to git
  - clonegit.sh: clones this git repository in case files are erased locally
  - restoreFrontend.sh: restores the frontend folder
  - restoreMySQL.sh: restores the database.
