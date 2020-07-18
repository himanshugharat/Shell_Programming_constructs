#Write a program in the following steps
#a. Generates 10 Random 3 Digit number.
#b. Store this random numbers into a array.
#c. Then find the 2nd largest and the 2nd smallest element without sorting the array.
#!/bin/bash -x
for((i=0;i<10;i++))
do
	num=$((RANDOM%999))
	arr[$i]=$num
done
echo ${arr[@]}
length=${#arr[@]}
smallest=1000
secondSmallest=1000
largest=0
secondlargest=0
for((i=0;i<length;i++))
do
	if [ ${arr[i]} -lt $smallest ]
	then
		smallest=${arr[i]}
	fi
	if [ ${arr[i]} -gt $smallest ]&& [ ${arr[i]} -lt $secondSmallest ]
	then
		secondSmallest=${arr[i]}
	fi
done
for((i=0;i<length;i++))
do
	if [ ${arr[i]} -gt $largest ]
	then
	largest=${arr[i]}
	fi
	if [ ${arr[i]} -lt $largest ]&& [ ${arr[i]} -gt $secondlargest ]
	then
	secondSmallest=${arr[i]}
	fi
done
echo "second largest number"$secomndlargest
echo "second smallest number"$secondSmallest
