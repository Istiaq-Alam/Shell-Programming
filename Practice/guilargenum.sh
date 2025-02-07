#!/bin/bash

# Get input from user using Zenity input boxes
num1=$(zenity --entry --title="Largest Number Finder" --text="Enter first number:")
num2=$(zenity --entry --title="Largest Number Finder" --text="Enter second number:")
num3=$(zenity --entry --title="Largest Number Finder" --text="Enter third number:")

# Check if inputs are empty
if [ -z "$num1" ] || [ -z "$num2" ] || [ -z "$num3" ]; then
    zenity --error --title="Error" --text="All numbers must be entered!"
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

# Show the result in a Zenity message box
zenity --info --title="Result" --text="The largest number is: $largest"
