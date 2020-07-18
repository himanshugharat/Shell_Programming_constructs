#Write a program that takes a command-line argument n and prints a table of the
#powers of 2 that are less than or equal to 2^n.
#!/bin/bash -x
read number
for((c=1;c<=number;c++))
do
	echo $((2**$c));
done

