#! /bin/bash

cat airlines.csv  | while read row
do
	month=`echo $row | cut -d"," -f6 | tr -d '"'`
	year=`echo $row | cut -d"," -f7 | tr -d '"'`
    
	if [[ $month == 'July' ]]
	then
		if [[ $year -gt 2009 ]]
		then
			echo $row >> data.txt 
		fi
	fi
#		if [[ $year -gt 2009 ]]
#		then
#			echo $row
#		fi
#	fi

done
