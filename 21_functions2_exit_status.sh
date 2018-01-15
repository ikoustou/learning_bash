#!/bin/bash
#write a function to backup a file to /tmp with the current date
#and check with a second function if the first has terminated succesfully

function backup_file(){
	if [ -f $1 ];then
		BACK="/tmp/$(basename $1).$(date +%F).$$"
		echo "back up $1 to $BACK"
		cp $1 $BACK
	else
		echo "the file does not exist"
		return 1
	fi
}
backup_file /etc/hosts
if [ $? -eq 0 ]
then
	echo "Back up succeded"
else
	echo "Back up failed"
	exit 1 #returns 1 for the whole script
fi
