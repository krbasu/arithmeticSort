#!/bin/bash -x

read -p "Enter first number : " a
read -p "Enter second number : " b
read -p "Enter three number : " c

x=$(( $a+$b*$c ))
y=$(( $a*$b+$c ))
z=`echo "scale=2; $c + $a / $b" | bc`
w=$(( $a%$b+$c ))

declare -A arithmeticDict

arithmeticDict[1]=$x
arithmeticDict[2]=$y
arithmeticDict[3]=$z
arithmeticDict[4]=$w

echo "The dictionary is : "${arithmeticDict[@]}

declare -a arithmeticArr

for (( i=1;i<=4;i++ ))
do
        arithmeticArr[$i]=${arithmeticDict[i]}
        echo $i" > "${arithmeticDict[i]}
done
