#!/bin/bash

# Prompt the user to enter the first number
echo "Enter the first number:"
read num1  # Read user input and store it in variable num1

# Prompt the user to enter the second number
echo "Enter the second number:"
read num2  # Read user input and store it in variable num2

# Perform addition using arithmetic expansion $((expression))
sum=$((num1 + num2))

# Display the result
echo "The sum of $num1 and $num2 is: $sum"

