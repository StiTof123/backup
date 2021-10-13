#!/bin/sh

TODAY=$(date +"%F")
USER=$(whoami)

cd /home/"$USER"
echo Making backup of "$USER" documents folder.
tar czvf /home/"$USER"/backup/popos-docs-backup-"$TODAY".tgz Documents
find /home/"$USER"/backup/ -type f -mtime +5 -exec rm {} \;
echo Sending Backup to Boxi
scp /home/"$USER"/backup/popos-docs-backup-"$TODAY".tgz "$USER"@192.168.178.50:/home/"$USER"/backup/popos
ssh "$USER"@192.168.178.50 'find /home/"$USER"/backup/popos -type f -mtime +10 -exec rm {} \;' 
echo All done!
