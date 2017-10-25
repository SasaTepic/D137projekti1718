#!/bin/sh

clear

echo "skripta za mijenjanje stringa u integere i obrnuto"

echo "unesi 2 integera"
read integer1
read integer2
zbroj=`expr $integer1 + $integer2`
echo "zbroj ta dva integera je $zbroj"

echo "integeri->string"
string="$integer1$integer2"
echo "$string"

echo "unesi 2 stringa"
read string1
read string2
echo "ispis stringova"
integer="$string1$string2"
echo "$integer"

echo "string->integer"

zbroj=`expr $string1 + $string2`
echo "zbroj ta dva stringa je $zbroj"

