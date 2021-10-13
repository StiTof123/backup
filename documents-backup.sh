#!/bin/sh

TODAY=$(date +"%F")
USER=$(whoami)
NODE=$(uname -n)

cd /home/"$USER"
echo Making backup of "$USER" documents folder.
mkdir /home/"$USER"/backup/
tar czvf /home/"$USER"/backup/"$NODE"-docs-backup-"$TODAY".tgz Documents
find /home/"$USER"/backup/ -type f -mtime +5 -exec rm {} \;
echo Sending Backup to Boxi
ssh -o SendEnv=$NODE "$USER"@192.168.178.50 mkdir backup/"$NODE"
scp /home/"$USER"/backup/"$NODE"-docs-backup-"$TODAY".tgz "$USER"@192.168.178.50:/home/"$USER"/backup/"$NODE"
ssh "$USER"@192.168.178.50 'find /home/"$USER"/backup/"$NODE" -type f -mtime +10 -exec rm {} \;' 
echo All done!
