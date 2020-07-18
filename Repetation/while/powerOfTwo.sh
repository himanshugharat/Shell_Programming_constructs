#Write a program that takes a command-line argument n and prints a
table of the powers of 2 that are less than or equal to 2^n till 256 is
reached..
#!/bin/bash -x
read number
res=0
pow=1
while [ $number -lt 256 ]
do
	res=$((2**$pow))
	pow=$((pow+1))
	echo $res
done

