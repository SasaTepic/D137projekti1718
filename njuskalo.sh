#!/bin/sh

#clear


echo "popis automobila marke BMW koji se prodaju na oglasnik.hr"

##content=$(wget oglasnik.hr/prodaja-automobila/bmw#landing -q -O -)
##echo $content>>./scripts/njuskalo.data

grep -Eoi '<h3[^<]+<' ./scripts/njuskalo.data | cut -c"30-"

# ne znam maknut dio nakon h3,pa sam ga izrezao...ali zbog toga u prvom
#redu imam liniju neke druge klase/gluposti

#ovo je primjer
#<h3 class="classified-title">BMW 318i</h3




#za ovaj url i 3 linije koda ispod dobili bi ispis:
#https://www.oglasnik.hr

#<a href="https://www.oglasnik.hr/prodaja-automobila/bmw-x3-2-0-u-odlicnom-stanju-zeder-oglas-2332327"





#grep -Eoi '<a [^>]+>' source.html |
#grep -Eo 'href="[^\"]+"' | 
#grep -Eo '(http|https)://[^/"]+'
