#!/bin/bash


#When called, this script has the purpose of translating state initials into full state name.

read -p "State initials" 

case $REPLY in

"NY" )
echo "New York";;

"VA" )
echo "Virginia";;

"AZ" )
echo "Arizona";;

"MD" )
echo "Maryland";;

"FL" )
echo "Florida";;

"TX" )
echo "Texas";;

"CA" )
echo "California";;

"DC" )
echo "Washington D.C";;

"OH" )
echo "Ohio";;

* )
echo "enter valid state initials"

esac

if [[ $REPLY =~ ^(OH|NY|VA|AZ|MD|FL|TX|CA|DC) ]]
then
echo "YEY! you fixed it"
elif [[ $REPLY !=  @(def|OH|NY|VA|AZ|MD|FL|TX|CA|DC) ]] 
then 
echo "FIX AS WELL!"
else 
echo "Not fixed"
fi

