#Help user find degF or degC based on their Conversion Selection. Use
#Case Statement and ensure that the inputs are within the Freezing Point (
#0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
#a. degF = (degC * 9/5) + 32
#b. degC = (degF – 32) * 5/9
#!/bin/bash -x
echo "1.farenhite 2.celcious"
echo "enter which conversion you want"
read choice
degF(){
	result=`echo "scale=2;($1 *9/5)+32"|bc`
}

degC(){
	result=`echo "scale=2;($1 - 32)*5/9"|bc`
}
case $choice in
1)
	echo "enter temp in F" 
	read temp
	if [ $temp -le 212 ]&& [ $temp -gt 32 ]
	then
		degC $temp
	else
		echo wroung input
	fi;;
2)
	echo "enter temp in degree"
	read temp
	if [ $temp -le 100 ]&& [ $temp -gt 0 ]
	then
		degF $temp
	else
		echo wrong input
	fi
esac
