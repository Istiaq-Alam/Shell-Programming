#!/bin/bash

echo "Enter first number: "
read num1

echo "Enter second number: "
read num2

echo "Enter third number: "
read num3

if [ $num1 -le $num2 ] && [ $num1 -le $num3 ]; then
    echo "The smallest number is: $num1"
elif [ $num2 -le $num1 ] && [ $num2 -le $num3 ]; then
    echo "The smallest number is: $num2"
else
    echo "The samllest number is: $num3"
fi
