#!/bin/bash

# Take three numbers as input
echo "Enter three numbers:"
read -a numbers  # Read numbers into an array

# Initialize the largest number as the first element
largest=${numbers[0]}

# Loop through all elements in the array
for num in "${numbers[@]}"
do
    if [ "$num" -gt "$largest" ]; then
        largest=$num
    fi
done

# Display the largest number
echo "The largest number is: $largest"
