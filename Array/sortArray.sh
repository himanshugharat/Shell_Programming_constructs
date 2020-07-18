#!/bin/bash -x
for((i=0;i<10;i++))
do
	num=$((RANDOM%999))
	arr[$i]=$num
done
echo ${arr[@]}
length=${#arr[@]}
for((i=0;i<length;i++))
do
for((j=$i;j>0;j--))
do
	if [ ${arr[j]} -gt ${arr[`echo $j-1`]} ]
	then
		temp=${arr[j]}
		arr[j]=${arr[`echo $j-1`]}
		arr[`echo $j-1`]=$temp
	fi
done
done
echo ${arr[@]}
echo ${arr[1]}
echo ${arr[`echo length-2`]}
