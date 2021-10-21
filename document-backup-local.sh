#!/bin/sh

TODAY=$(date +"%F")
USER=$(whoami)
NODE=$(uname -n)

cd /home/"$USER"
echo Making backup of "$USER" documents folder.
mkdir /home/"$USER"/backup/
tar czvf /home/"$USER"/backup/"$NODE"-docs-backup-"$TODAY".tgz Documents
find /home/"$USER"/backup/ -type f -mtime +5 -exec rm {} \;
