#!/bin/bash

echo "Enter first number: "
read num1

echo "Enter second number: "
read num2

echo "Enter third number: "
read num3
echo ""
#Finding Large Number using If-else
echo "Using If-else:"
if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]; then
    echo "The largest number is: $num1"
elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ]; then
    echo "The largest number is: $num2"
else
    echo "The largest number is: $num3"
fi
echo ""




##Finding Large Number using If-else
echo "Using For-Loop:"
# Initialize largest with the first number
largest=$num1

# Use a for loop to compare each number
for num in $num2 $num3
do
    if [ "$num" -gt "$largest" ]; then
        largest=$num
    fi
done

# Display the largest number
echo "The largest number is: $largest"
echo ""




##Finding Smallest Number using If-else
echo "Using If-else:"
if [ $num1 -le $num2 ] && [ $num1 -le $num3 ]; then
    echo "The smallest number is: $num1"
elif [ $num2 -le $num1 ] && [ $num2 -le $num3 ]; then
    echo "The smallest number is: $num2"
else
    echo "The samllest number is: $num3"
fi
echo ""




#Finding Smallest Number using For Loop
echo "Using For-Loop:"

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
echo ""
