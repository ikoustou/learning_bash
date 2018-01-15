#!/bin/bash
#this program asks your age and prints a message telling you if you are going to school

read -p "Please give your age: " AGE
case "$AGE" in
	[5-9]|1[01])
		echo "you are going to primary school"
		;;
	1[2-7])
		echo "you are going to secondary school"
		;;
	*)
		echo "you are not going to school!"
		;;
esac
exit 1
