#Write a program in the following steps.
#Roll a die and find the number between 1 to 6
#Repeat the Die roll and find the result each time
#Store the result in a dictionary
#Repeat till any one of the number has reached 10 times
#Find the number that reached maximum times and the one that was for minimum times
#!/bin/bash
one=0
two=0
three=0
four=0
five=0
six=0
while [ $one -lt 10 ]&&[ $two -lt 10 ]&&[ $three -lt 10 ]&&[ $four -lt 10 ]&&[ $five -lt 10 ]&&[ $six -lt 10 ]
do
num=$((RANDOM%6))
declare -A dice
if [ $num -eq 1 ]
then
	one=$(( $one+1))
	dice[one]=$one
fi
if [ $num -eq 2 ]
then
        two=$(($two+1))
	dice[two]=$two
fi
if [ $num -eq 3 ]
then
        three=$(($three+1))
	dice[three]=$three
fi
if [ $num -eq 4 ]
then
        four=$(($four+1))
	dice[four]=$four
fi
if [ $num -eq 5 ]
then
        five=$(($five+1))
	dice[five]=$five
fi
if [ $num -eq 6 ]
then
        six=$(($six+1))
	dice[six]=$six
fi
done
echo ${!dice[@]}
echo ${dice[@]}
