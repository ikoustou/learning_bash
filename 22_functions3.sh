#!/bin/bash
function count_files_inthis_dir(){
	if [ -d $1 ]; then
		COUNT=$(ls $1 | wc -l)
		echo "there are $COUNT files in this directory"
	else
		echo "this directory does not exist"
		return 1
	fi
}
count_files_inthis_dir /home/ioannis/scripts
count_files_inthis_dir /etc
