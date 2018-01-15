#!/bin/bash
#this program reads /etc/passwd line by line and presents to the screen
COUNT=1
cat /etc/passwd | while read LINE
do
	echo "${COUNT} : ${LINE}"
	((COUNT++))
done
exit 0
