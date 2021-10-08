#! /bin/sh

TODAY=$(date +"%F")

cd /home/stiantoftevag
echo Making backup of documents folder. 
tar czvf /home/stiantoftevag/backup/popos-docs-backup-"$TODAY".tgz Documents 
echo Sending Backup to Boxi
scp /home/stiantoftevag/backup/popos-docs-backup-"$TODAY".tgz stiantoftevag@192.168.178.50:/home/stiantoftevag/backup/popos
echo All done! 

