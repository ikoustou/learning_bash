#!/bin/bash
#Rename .jpg files and add the date in the format YYYYMMDD in front of the name

function rename_images(){
	for IMAGES in *.jpg
	do
		NEWNAME="$( date +%Y%m%d )$IMAGES"
		mv $IMAGES $NEWNAME
	done
}
rename_images
if [ $? -eq 0 ]
then
	echo "I found images and I renamed them"
else
	echo "I have not found images"
fi
exit 0
