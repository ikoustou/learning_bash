#!/bin/bash
#assign values to array
array1=(giannis stellios panagiotis)

#print second and third element
echo ${array1[1]}
echo ${array1[2]}

#array with integers
array2=(10 20 30 40 50 60 70 80 90)

for INDEX in "${!array2[@]}"
do
	echo "$INDEX"
done
