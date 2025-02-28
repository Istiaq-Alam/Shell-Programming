#!/bin/bash

# Check if an argument is provided
if [ $# -ne 1 ]; then
    read -p "Enter any positive Integer : " n
else
    n=$1
fi


# Validate input (must be a positive integer)
if ! [[ "$n" =~ ^[0-9]+$ ]] || [ "$n" -le 0 ]; then
    echo "Error: Input must be a positive integer."
    exit 1
fi

# Generate Fibonacci sequence
a=0
b=1
echo -n "Fibonacci sequence up to $n terms: $a"

for (( i=1; i<n; i++ )); do
    echo -n " $b"
    temp=$((a + b))
    a=$b
    b=$temp
done
echo
