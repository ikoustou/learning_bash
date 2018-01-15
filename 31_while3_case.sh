#!/bin/bash 
#show a menu and ask user to select an option: 1 to show uptime, 2 to show disk space, q to quit with a message and for everything else to show "invalid option"
declare OPTION
while OPTION=[!12q]
do
read -p "Please type: 1 to show uptime, 2 to show disk space, q to quit: " OPTION
case "$OPTION" in
	1)
		uptime
		;;
	2)
		df
		;;
	q)
		echo "Good bye, thanks"
		break
		;;
	*)
		echo "invalid option, try again"
		;;
esac
done
