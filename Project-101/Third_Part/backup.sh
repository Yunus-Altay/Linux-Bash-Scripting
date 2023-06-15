#!/bin/bash

if [[ $UID == 0 ]]; then
	echo "You are root user"

elif groups | grep -q "\bsudo\b" || groups | grep -q "\badm\b"; then
	echo -e "You have superuser privileges\n"
else
	echo -e "You do not have superuser privileges\n"
	sleep 1
	echo "Exiting"
	sleep 1
	exit 1
fi

cd /mnt 
if [[ -e backup ]]; then
	echo "backup folder already exists"
else
	sudo mkdir backup
fi

SOURCE_FOLDER="/home/ec2-user/data"
DESTINATION_FOLDER="/mnt/backup"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
HOSTNAME=$(hostname -s)
BACKUP_FILE="backup_${HOSTNAME}_${TIMESTAMP}_$(basename $SOURCE_FOLDER).tar.tgz"

echo "Backup process initiating"

sudo tar -czvf "${DESTINATION_FOLDER}/${BACKUP_FILE}" "$SOURCE_FOLDER"
if [[ ${?} == 0 ]]; then
	echo "Backup process complete"
fi


# To see a listing of the archive contents. From a terminal prompt type:
# tar -tzvf /mnt/backup/ip-172-31-89-147-2021_11_02_12_26_AM.tgz

# To restore a file from the archive to a different directory enter:
# tar -xzvf /mnt/backup/ip-172-31-89-147-2021_11_02_12_26_AM.tgz -C /tmp etc/hosts