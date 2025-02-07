#!/bin/bash

# Take three numbers as input
echo "Enter three numbers:"
read -a numbers  # Read numbers into an array

# Initialize the smallest number as the first element
smallest=${numbers[0]}

# Loop through all elements in the array
for num in "${numbers[@]}"
do
    if [ "$num" -lt "$smallest" ]; then
        smallest=$num
    fi
done

# Display the smallest number
echo "The largest number is: $smallest"
