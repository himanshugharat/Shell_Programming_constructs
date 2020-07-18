#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77,
#etc and store them in an array
#!/bin/bash -x
for((i=1;i<100;i++))
do
	if [ $((i%11)) -eq 0 ]
	then
		arr[$i]=$i
	fi
done
echo ${arr[@]}

