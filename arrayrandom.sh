#!/bin/bash -x

i=1
while [ $i -le 10 ]
do
	result[$i]=$((RANDOM%900+100))
	((i++))
done
echo ${result[@]}

