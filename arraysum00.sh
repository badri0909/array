#!/bin/bash -x

read -a array
total=0
for i in ${array[@]}
do
	total=$(($total+$i))

done
echo ${array[@]}
echo "Total: $total"
