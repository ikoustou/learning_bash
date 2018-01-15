#!/bin/bash
#Ask the user what files should me renamed 
#Add date of Format YYYMMDD as prefix of the name
#Rename the files and inform the user 
function what_files(){
	read -p "give extension you want to rename, ex .jpg: " EXTENSION
}
function what_prefix(){
	read -p "give prefix or type enter for date of format YYYYMMDD" PREFIX
	if [ -z "$PREFIX" ]
	then
		PREFIX=$( date +%Y%m%d )
		echo "$PREFIX"
	fi
}

function rename_images(){
	for IMAGES in *$EXTENSION
	do
		NEWNAME="${PREFIX}${IMAGES}"
		echo "renaming $IMAGES to $NEWNAME"
		mv $IMAGES $NEWNAME
	done
}
what_files
what_prefix
rename_images
if [ $? -eq 0 ]
then
	echo "I found images and I renamed them"
else
	echo "I have not found images"
fi
exit 0
