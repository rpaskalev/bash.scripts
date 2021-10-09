#!/bin/bash

rm -f text.txt
touch text.txt
echo -e "Windows is new 2000 \n Linux is old 7000 \n OS is brand new 1000" > text.txt

echo "enter filename to print from different awk"

read filename

if [[ -f $filename ]]
then
	awk '/Linux/ {print $1,$4}' $filename
else
	echo " $filename not made :-("
fi

rm -f text.txt

