#!/bin/bash
line=`cat cancer.csv | wc -l`
cat cancer.csv | tail -n $((line -1)) | while read line
do
	states=`echo $line | cut -d "," -f1 | tr -d '"'`
	#echo $states"states"
	tot_pop=`echo $line | cut -d "," -f4 | tr -d '"' | tr -d '.'`
	#echo $tot_pop"total_population"
	tot_pop1="${tot_pop::-1}"
	#echo $tot_pop1
	tot_rate=`echo $line | cut -d "," -f2 | tr -d '"'| tr -d '.'`
	#echo $tot_rate"total_rate"
	tot_rate1="${tot_rate::-1}"
	if [[ $tot_pop1 -gt 10000000 ]]
	then
		if [[ $tot_rate1 -gt 200 ]]
		then
			echo $states
		fi
	fi
		
done

