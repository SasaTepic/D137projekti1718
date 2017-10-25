#!/bin/sh

clear

echo "skripta za pronalazak datoteka koje su vece od navedene velicine"
echo "unesite najmanju velicinu datoteka koje ce skripta ispisati:"
read size
find /home/andro -size +$size -exec ls -1 {} + >>scripts/6backupp

tar -cvzf ./scripts/6backupp.tgz ./scripts/6backupp
