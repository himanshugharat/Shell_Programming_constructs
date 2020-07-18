#Write a program that takes a input and determines if the number is a prime.
#!/bin/bash -x
read number
for((i=2;i<number;i++))
do
	if [ $((number%i)) -eq 0 ]
	then
		temp=$((temp+1))
	fi
done
if [ $temp -gt 2 ]
then
	echo not prime
else
	echo prime
fi

