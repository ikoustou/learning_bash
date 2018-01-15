#!/bin/bash
if [ -f $1 ];then
	echo "this is a regular file"
	exit 0
elif [ -d $1 ];then
	echo "this is a directory"
	exit 1
else
	echo "this is not a regular file or directory"
	exit 2
fi 
