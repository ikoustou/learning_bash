#!/bin/bash
COUNT=1
PREVIOUS_TIMESTAMP10=""
ARRAYLINE=()
unique_sorted_ar=()
while read LINE
do
	echo $COUNT
	echo "$LINE"
	timestampall=$( echo "$LINE" | cut -d: -f1 )
	echo $timestampall
#------extract timestamp of every 10 minutes ---
        TIMESTAMP10=$( echo "$timestampall" | cut -c1-12 )
	echo "$TIMESTAMP10"

	if [[ $COUNT -eq 1 ]];then PREVIOUS_TIMESTAMP10=$TIMESTAMP10; fi
	
#-check if the previous timestamp belongs to a different interval of 10 minutes 
	if [[ $PREVIOUS_TIMESTAMP10 != $TIMESTAMP10 ]]
	then
		#--- count of IDs ----
		SUM=${#ARRAYLINE[@]}
		#--- count of unique IDs ---
		unique_sorted_ar=( $(
			for el1 in "${ARRAYLINE[@]}"
			do
				echo "$el1"
			done | sort -u ) )
		echo "unique array:"
		echo "${unique_sorted_ar[@]}"
		
		if [[ "${unique_sorted_ar[@]}" != "" ]]
		then 
			UNIQUE=$( echo "${unique_sorted_ar[@]}" |wc -l)
		else
			UNIQUE=0
		fi

		echo "Sum= $SUM , Unique= $UNIQUE "

		
#----write to file nonunique.txt
			echo "${PREVIOUS_TIMESTAMP10}:${SUM}">>nonunique.txt
#----write to file unique.txt ----
			echo "${PREVIOUS_TIMESTAMP10}:${UNIQUE}">>unique.txt	
		#--- delete elements of the array and start again
		ARRAYLINE=()
		unique_sorted_ar=()
		PREVIOUS_TIMESTAMP10=$TIMESTAMP10
		
	fi

#-------------Extract the remaining array with the [ ] ----
	ads=$( echo "$LINE" | cut -d: -f2 )
	if [[ "$ads" == "-" ]]
	then 
		(( COUNT++ ))
		continue
	else
		AD2=$( echo "$ads"| sed -e "s/^\[//" -e "s/\]$//" ) 
		echo "$AD2"
		
		OLDIFS=$IFS
		IFS=", "
		for ITEM in "$AD2"
		do
			ARRAYLINE+=( $ITEM )
		done
		echo "${ARRAYLINE[@]}"
	fi
	(( COUNT++ ))
done < text1.txt

