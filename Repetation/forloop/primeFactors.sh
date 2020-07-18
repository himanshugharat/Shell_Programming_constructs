#Write a program to compute Factors of a number N using prime factorization method
#!/bin/bash
read number
for((i=2;i<$number;i++))
do
	while [ $((number%i)) -eq 0 ]
	do
		echo $i
		number=$((number/i))
	done
done
if [ $number -gt 2 ]
then
	echo $number
fi
