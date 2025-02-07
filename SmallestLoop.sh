#!/bin/bash

# Take three numbers as input separately
echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

echo "Enter third number:"
read num3

# Initialize Smallest with the first number
smallest=$num1

# Use a for loop to compare each number
for num in $num2 $num3
do
    if [ "$num" -lt "$smallest" ]; then
        smallest=$num
    fi
done

# Display the smallest number
echo "The largest number is: $smallest"
