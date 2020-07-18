#!/bin/bash -x
read -p "Think of a number between 1 to 100 : " num
for (( i=1;i<=100;i++ ))
do
mv=$((($num)/2))
if [ $num -eq $mv ]
then
echo "YOUR NUMBER IS FOUND : "$num
exit
fi
if [ $num -lt $mv ]
then
while [ $mv -ne 1 ]
do
mv=$(($mv-1))
if [ $num -eq $mv ]
then
echo "YOUR NUMBER IS FOUND : "$num
exit
fi
done
fi
if [ $num -gt $mv ]
then
while [ $mv -ne 100 ]
do
mv=$(($mv+1))
if [ $num -eq $mv ]
then
echo "YOUR NUMBER IS FOUND : "$num
exit
fi
done
fi
done
