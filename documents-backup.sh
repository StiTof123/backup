#!/bin/sh

TODAY=$(date +"%F")
USER=$(whoami)

cd /home/"$USER"
echo Making backup of "$USER" documents folder.
tar czvf /home/"$USER"/backup/popos-docs-backup-"$TODAY".tgz Documents
echo Sending Backup to Boxi
scp /home/"$USER"/backup/popos-docs-backup-"$TODAY".tgz "$USER"@192.168.178.50:/home/"$USER"/backup/popos
echo All done!
