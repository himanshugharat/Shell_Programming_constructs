#Extend the Prime Factorization Program to store all the Prime Factors of a
#number n into an array and finally display the output.
#!/bin/bash -x
read num

for((i=2;i<$num;i++))
do
	while [ $((num%i)) -eq 0 ]
	do
		arr[((j++))]=$i
		num=$((num/i))
	done
done
if [ $num -gt 2 ]
then
	arr[$j]=$num
fi
echo ${arr[@]}

