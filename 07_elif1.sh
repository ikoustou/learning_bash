#!/bin/bash
NUMBER=80

if [ $NUMBER -lt 50 ]
then
	echo "under 50"
elif [ $NUMBER -lt 75 ]
then
	echo "between 50 and 75"
else
	echo "it is over 75"
fi
