#!/bin/sh



echo "skripta za pronalazak otvorenog porta na zadanoj IP adresi"
echo "unesite IP adresu"
read address

echo "unesite port"
read port


`nc -z -v -w5 $address $port`

x=$?

if [ "$x" != 1 ]; then

  echo  "port $port je otvoren"
else
  echo "port $port je zatvoren"
fi


