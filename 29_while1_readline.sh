#!/bin/bash
#read line by line the /etc/fstab and prints it to the screnn
LINE_NUM=1
while read LINE
do
	echo "Line: ${LINE_NUM} ${LINE}"
	((LINE_NUM++))
done </etc/fstab
echo "finished"
exit 1
