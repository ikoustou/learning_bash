#!/bin/bash
#this script calls a random number and write this number calling a function to /var/log/messages
function log_random(){
	logger -i -t randoming "${1}.PID=$$"
}
RAND=$RANDOM
log_random $RAND
RAND=$RANDOM
log_random $RAND
RAND=$RANDOM
log_random $RAND

exit 1
