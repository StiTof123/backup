#!/bin/sh

TODAY=$(date +"%F")
USER=$(whoami)

cd /home/"$USER"
echo Making backup of "$USER" documents folder.
<<<<<<< HEAD
tar czvf /home/stiantoftevag/backup/popos-docs-backup-"$TODAY".tgz Documents 
=======
sleep 2 
tar czvf /home/"$USER"/backup/popos-docs-backup-"$TODAY".tgz Documents 
>>>>>>> 32e33997f5209fad1cd6eb27fa573bdc28fcbfd2
echo Sending Backup to Boxi
scp /home/"$USER"/backup/popos-docs-backup-"$TODAY".tgz "$USER"@192.168.178.50:/home/"$USER"/backup/popos
echo All done!
