#Take a number from user and check if the number is a Prime then show
#that its palindrome is also prime
#a. Write function check if number is Prime
#b. Write function to get the Palindrome.
#c. Check if the Palindrome number is also prime
#!/bin/bash -x
echo "enter a number to check"
read Number
finalNo=$number
prime(){
temp=0
for((i=2;i<finalNo;i++))
do
	if [ $((finalNo%i)) -eq 0 ]
	then
		temp=$((temp+1))
	fi
done
if [ $temp -gt 2 ]
then
	echo $1not prime
else
	echo $1the number is prime
fi
}
palin(){
while [ $number -gt 0 ]
do
rem=$(($number%10))
res=$(($((res*10))+rem))
number=$(($number/10))
done
echo 11
}
prime $number
palin $number
prime $res

