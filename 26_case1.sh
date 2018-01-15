#!/bin/bash
read -p "give your anser yes or no y/n: " ANSWER
case "$ANSWER" in
	[nN]|[nN][oO])
		echo "you answered: no"
	;;
	[yY]|[yY][eE][sS])
		echo "you answered: yes"
	;;
	*)
		echo "invalid answer"
	;;
esac
exit 1
