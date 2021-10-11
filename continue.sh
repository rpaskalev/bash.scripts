#!/bin/bash 

for (( i=1; i<10; i++ ))

do
	if [ $i -eq 4 ]||[ $i -eq 8 ]
	then	
		continue
	fi
	echo this one $i
done
