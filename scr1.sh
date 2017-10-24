#!/bin/bash 
clear
echo "Logger"

INTERVAL=$((10*60));

if [[ $# == 0 ]] 
	then
	echo "Default interval: 10 min."
	else	
	INTERVAL=$(($1*60))
fi

if [[ ! -e log_history.log ]]
	then
	echo "No .log file. Creating one."
	echo "This is a log file." >> log_history.log

fi

echo "Logging user activity now..."

while true; do

	printf "\n\n" >> log_history.log
	date '+%x, %T' >> log_history.log
	who >> log_history.log
	sleep $INTERVAL
done
	
