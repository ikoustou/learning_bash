#!/bin/bash
TARGET_HOST="google.com"

ping -c 1 $TARGET_HOST 
if [ $? -eq 0 ] ; then
	echo "host is reachable"
else
	echo "host is unreachable"
fi
