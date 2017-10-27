#!/bin/sh

#clear
echo 'Popis oglasa na web stranici Njuskalo.hr za pretrazeni pojam: '$1

content=$(wget 'http://www.njuskalo.hr/?ctl=search_ads&keywords='$1 -q -O -)
echo $content>>page.html
sed 's/<article class="entity-body cf"> /<article class="entity-body cf">\n/g' <page.html >page1.html
sed 's/ <div/\n<div/g' <page1.html >page2.html
sed -e s/[[:space:]]href=\".*\"//g -i page2.html
sed -e s/[[:space:]]name=\".*\"//g -i page2.html
awk -F '[<>]' '/<h3 class="entity-title">/ { gsub(/<a>/, ""); sub(/ .*</, "", $3); print $3 } ' page2.html
rm page.html page1.html page2.html



