#!/bin/bash -x

read -p "Enter first number : " a
read -p "Enter second number : " b
read -p "Enter three number : " c

x=$(( $a+$b*$c ))
y=$(( $a*$b+$c ))
