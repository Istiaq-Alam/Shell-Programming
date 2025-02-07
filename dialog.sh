#!/bin/bash

# Get input from user using dialog
num1=$(dialog --inputbox "Enter first number:" 8 40 --output-fd 1)
num2=$(dialog --inputbox "Enter second number:" 8 40 --output-fd 1)
num3=$(dialog --inputbox "Enter third number:" 8 40 --output-fd 1)

# Check if inputs are empty
if [ -z "$num1" ] || [ -z "$num2" ] || [ -z "$num3" ]; then
    dialog --msgbox "Error: All numbers must be entered!" 8 40
    exit 1
fi

# Compare numbers
if [ "$num1" -ge "$num2" ] && [ "$num1" -ge "$num3" ]; then
    largest=$num1
elif [ "$num2" -ge "$num1" ] && [ "$num2" -ge "$num3" ]; then
    largest=$num2
else
    largest=$num3
fi

# Show the result in a dialog box
dialog --msgbox "The largest number is: $largest" 8 40
