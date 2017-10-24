#!/bin/bash


echo "Provjeravam je li port $1 na IP adresi $2 otvoren."

if [[ "$(nmap -p $1 $2)" == *"open"* ]]
	then
		echo "port je otvoren!"
	else
		echo "port nije otvoren."
fi
	
