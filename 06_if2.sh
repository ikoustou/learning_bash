#!/bin/bash
MYSHELL="tsh"
#pay attention to leave a blankspace before and after the = inside the test
if [ "$MYSHELL" = "bash" ]
then
	echo "my shell is bash"
else
	echo "your shell is not bash"
fi

