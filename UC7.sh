#!/bin/bash

read -p "Enter first number : " a
read -p "Enter second number : " b
read -p "Enter three number : " c

x=$(( $a+$b*$c ))
y=$(( $a*$b+$c ))
z=$(( $c+$a/$b ))
w=$(( $a%$b+$c ))

declare -A arithmeticDict

arithmeticDict[0]=$x
arithmeticDict[1]=$y
arithmeticDict[2]=$z
arithmeticDict[3]=$w

echo "Dictionary is : "${arithmeticDict[1]}

for (( i=0; i<=3; i++ ))
do
        arr[$i]=${arithmeticDict[$i]}
done

echo "The array is : "${arr[@]}


