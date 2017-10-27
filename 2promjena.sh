#!/bin/sh

clear


echo "skripta za pronalazak nedavno promijenjenih datoteka u /home/username"
echo "unesite vremenski interval (u minutama) za koji zelite provjeriti ima li promjena:"
read time
find /home/andro -cmin -$time -ls >>scripts/backupp

tar -cvzf ./scripts/backupp.tgz ./scripts/backupp
