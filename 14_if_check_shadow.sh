#!/bin/bash
if [ -f /etc/shadow ]
then
	echo "the shadow file exists"
fi
if [ -w /etc/shadow ]
then
	echo "You can write to this file"
else
	echo "You can NOT write to this file"
fi

