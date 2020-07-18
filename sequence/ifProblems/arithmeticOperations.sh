#Write a program that takes User Inputs and does Unit Conversion of
#different Length units
#1. Feet to Inch
#3. Inch to Feet
#2. Feet to Meter
#4. Meter to Feet
#!/bin/bash -x
read choice
case $choice in
1)
read num
res=`echo "$num*12" |bc`
echo $res;;
2)
read num
res=`echo "$num*0.3048"|bc`
echo $res;;
3)
read num
res=`echo "num*0.0833333"|bc`
echo $res;;
4)
read num
res=`echo "$num*3.28084"|bc`
echo $res;;

esac

