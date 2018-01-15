#!/bin/bash
FILES=$( ls )
echo "the files of this firectory are: "
for EACHFILE in $FILES
do
	echo " $EACHFILE"
done
