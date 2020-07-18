#Write a Program where a gambler starts with Rs 100 and places Re 1 bet
#until he/she goes broke i.e. no more money to gamble or reaches the
#goal of Rs 200. Keeps track of number of times won and number of bets
#made.
#!/bin/bash -x
bet=1
goal=200
init=100
n=0
while [ $init -ne $goal ]&&[ $init -gt 0 ]
do
res=$((RANDOM%2))
if [ $res -eq 1 ]
then
	init=$((init+1))
	n=$((n+1))
else
init=$((init-1))
n=$((n+1))
fi
done

