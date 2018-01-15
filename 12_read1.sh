#!/bin/bash
SECRET=42
read -p "what is my age? " AGE
if [ $AGE = $SECRET ]
then
	echo "you found it! it is ${SECRET}"
else
	echo "no it is not"
fi

