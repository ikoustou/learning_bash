#!/bin/bash -x
OLDIFS=$IFS
IFS=":"
data="root:x:0:0:root:/root:/bin/bash"
COUNT=0
for ITEM in $data
do
	[ $COUNT -eq 0 ] && USER=$ITEM
	[ $COUNT -eq 6 ] && USER_SHELL=$ITEM
	(( COUNT++ ))	
done
IFS=$OLDIFS
echo "the user is $USER and the shell is $USER_SHELL"
