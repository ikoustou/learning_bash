#!/bin/bash 
#start with zero elements
array=()

data1=(10 0 23 45)
echo "elements: ${#data1[@]}"
echo ${data1[@]}
echo

data2=(5 3)
echo "elements: ${#data2[@]}"
echo ${data2[@]}
echo

data3=(10 45 16 5 11)
echo "elements: ${#data3[@]}"
echo "${data3[@]}"

dataall=("${data1[@]}" "${data2[@]}" "${data3[@]}")
echo "${dataall[@]}"
echo

echo "---- second approach, increasing the final array: array+=($datax[@]) ---"
array+=(${data1[@]})
echo "${array[@]}"

array+=(${data2[@]})
echo "${array[@]}"

array+=(${data3[@]})
echo "${array[@]}"

#---------------- finding how many unique elements ------
#------- sorting
	sorted=( $(
		for el in "${array[@]}"
		do
			echo $el
		done | sort ) )


echo "-----sorted-----"
echo "${sorted[@]}"


#------ unique elements ----
	unique=( $(
		for ele in "${array[@]}" 
		do
			echo "$ele"
		done| sort -u  ) )
echo "--- unique elements ---"
echo "${unique[@]}"





#function unique_elements(){
#	UNIQUE=0
#	array=$1
#	for ((i=0;i<${#array[@]};i++))
#	do
#		for ((j=
#	done
#}

#echo "--------- finding unique elements  --------"
#echo "number of elements: ${#array[@]}"


