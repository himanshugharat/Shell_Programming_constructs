#Write a program that reads 5 Random 3 Digit values and then outputs the minimum and the maximum value
#!/bin/bash -x
numa=$(((RANDOM %900) + 100))
numb=$(((RANDOM %900) + 100))
numc=$(((RANDOM %900) + 100))
numd=$(((RANDOM %900) + 100))
nume=$(((RANDOM %900) + 100))
echo “five Random number is:” $numa $numb $numc $numd $nume
number=($numa $numb $numc $numd $nume)
#echo "${number[0]}";
largest="${number[0]}";
smallest="${number[0]}"
for i in "${number[@]}"
do
if [ $i -gt $largest ]
then
largest=$i;
fi
if [$i -lt $smallest ]
then
smallest=$i;
fi
done
echo "largest number=$largest";
echo "smallest number=$smallest";

