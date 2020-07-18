#Write a function to check if the two numbers are Palindromes
#!/bin/bash -x
rev(){
	data=$input
	num=$1
while [ $num -gt 0 ]
do
	rem=$(($num%10))
	res=$(($((res*10))+rem))
	num=$(($num/10))
done
if [ $res -eq $data ]
	then
	echo palindrom
	res=0
	else
	echo not
	res=0
fi
}
for((i=0;i<2;i++))
do
	echo enter the number 
	read input
	rev $input
done
