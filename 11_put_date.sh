#!/bin/bash
FILES=$( ls )
DATE=$(date +%F)
for FILE in $FILES
do
	mv ${FILE} ${DATE}${FILE}
done 
