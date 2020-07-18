# program for take a cla n and prints the nth harmonic function

#!/bin/bash -x
read -p "Enter a range for harmonic number : " number
num=0
if [ $number -ne 0 ]
then
	for (( i=1;i<=number;i++ ))
	do 
        num=$( echo "scale=2; $num+1/$i" | bc )
        done
        echo $num
fi
