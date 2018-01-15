#!/bin/bash
echo "the name of the script: $0 "
COUNTER=1
for NAMES in $@
do
	echo "this is the $COUNTER name: $NAMES"
	let "COUNTER+=1"
done
