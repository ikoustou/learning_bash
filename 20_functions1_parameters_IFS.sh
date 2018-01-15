#!/bin/bash
#define two functions that accept names as parameters and say hello to them
#use $@ and $* to type the names 
function hello1(){
	echo "Hello $@ "
}
function hello2(){
	echo "Hello $* "
}
hello1 john helen vicky
hello2 john helen vicky
#Internal Field Separator
IFS=,
hello2 john helen vicky
IFS=$'\n'
hello2 john helen vicky
