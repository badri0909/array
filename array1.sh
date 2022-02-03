#!/bin/bash -x

echo "enter a number:"
read input
temp=$input

#extract digits from the number
i=0
while [ $input -ne 0 ];do
buff=`expr $input % 10`
A[$i]=$buff
i=`expr $i + 1`
input=`expr $input / 10`
done

#.................................

# even and odd sum
odd_sum=0
even_sum=0
for ((j=0;j<i;j++));do
if [ `expr $j % 2` -eq 0 ];then
odd_sum=`expr $odd_sum + ${A[$j]}`
else
even_sum=`expr $even_sum + ${A[$j]}`
fi
done
# display result
if [ $odd_sum -eq $even_sum ];then
echo "$temp is divisible by 11"
else
echo "$temp is not divisible by 11"
fi
