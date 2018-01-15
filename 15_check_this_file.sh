#!/bin/bash
if [ -f $1 ] ; then
	echo "this is a regular file"
	ls -l $1
fi
if [ -d $1 ] ; then
	echo "this is a directory"
	ls -ld $1
fi

