#Use Random Function (( RANDOM )) to get Single Digit
#!/bin/bash -x
number=$[ ($RANDOM % 10)  ];
echo "single digit random value $number";
