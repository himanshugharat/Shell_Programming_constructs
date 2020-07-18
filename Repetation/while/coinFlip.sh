#Extend the Flip Coin problem till either Heads or Tails wins 11 times.
#!/bin/bash -x
tail=0
heads=0
while [ $heads -le 11 ]&&[ $tail -le 11 ]
do
	number=$((RANDOM%2))
	if [ $number -eq 0 ]
	then
		echo tails
		tail=$((tail+1))
	else
		echo heads
		heads=$((heads+1))
	fi
done
