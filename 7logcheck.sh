#!/bin/sh

clear


echo "skripta za provjeru logiranih korisnika"

echo "upisite vremenski interval provjere u minutama"
read minuta
sd=60
sekunde=$(($sd * $minuta))
while true
do
w >> ./scripts/log_history.log
sleep $sekunde
done
