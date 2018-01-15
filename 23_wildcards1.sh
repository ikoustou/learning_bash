#!/bin/bash
#write a script to list the files which end in digit and .sh in present directory
function scripts_end_digit(){
	echo "the scripts ending in digit are:"
	local FILE
	for FILE in *[0-9].sh
	do
		echo $FILE
	done	
}
scripts_end_digit
