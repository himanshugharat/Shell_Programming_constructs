#Extend the program to take a range of number as input and output the Prime
#Numbers in that range.
#!/bin/bash
read range
for((k=1;k<range;k++))
do

for((i=2;i<k;i++))
do
        if [ $((k%i)) -eq 0 ]
        then
                temp=$((temp+1))
        fi
done
if [ $temp -ge 1 ]
then
       echo
else
        echo $k
fi

temp=0
done

