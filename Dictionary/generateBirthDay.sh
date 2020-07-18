#Write a Program to generate a birth month of 50 individuals between the
#year 92 & 93. Find all the individuals having birthdays in the same month.
#Store it to finally print.
#!/bin/bash -x
declare -A dict
for((i=0;i<50;i++))
do
	month=$((RANDOM%11))
	if [ $month -eq 0 ]
	then
		dict[jan]=$jan
		jan=$((jan+1))
	fi
	if [ $month -eq 1 ]
	then
		dict[feb]=$feb
		feb=$((feb+1))
	fi
	if [ $month -eq 2 ]
	then
		dict[mar]=$mar
		mar=$((mar+1))
	fi
	if [ $month -eq 3 ]
	then
		dict[apr]=$apr
		apr=$((apr+1))
	fi
	if [ $month -eq 4 ]
	then
		dict[may]=$may
		may=$((may+1))
	fi
	if [ $month -eq 5 ]
	then
		dict[jun]=$jul
		jun=$((jun+1))
	fi
	if [ $month -eq 6 ]
	then
		dict[jul]=$jul
		jul=$((jul+1))
	fi
		if [ $month -eq 7 ]
	then
		dict[aug]=$aug
		aug=$((aug+1))
	fi
	if [ $month -eq 8 ]
	then
		dict[sep]=$sep
		sep=$((sep+1))
	fi
	if [ $month -eq 9 ]
	then
		dict[oct]=$oct
		oct=$((oct+1))
	fi
	if [ $month -eq 10 ]
	then
		dict[nov]=$nov
		nov=$((nov+1))
	fi
	if [ $month -eq 11 ]
	then
	dict[dec]=$dec
	dec=$((dec+1))
	fi


done
echo ${!dict[@]}
echo ${dict[@]}

