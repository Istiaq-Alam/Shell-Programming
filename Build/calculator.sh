#!/bin/bash

# Function to check packages 
check_and_install() {
    if ! dpkg -l | grep -q "^ii  $1 "; then
        echo "$1 is not installed. Installing..."
        sudo apt update && sudo apt install -y "$1"
    else
        echo "$1 is already installed."
    fi
}
# installing basic packages
check_and_install figlet
check_and_install bc
check_and_install lolcat

# Confirmation message
echo "All required packages are installed!"
echo "Starting Calculator..."
echo 
echo
echo

figlet Calculator | lolcat
# Function to replace π with its numerical value in the input expression
replace_pi() {
    echo "$1" | sed 's/π/3.14159265359/g'
}

# Function to handle user input and calculation
run_calculator() {
    echo "Enter expression (or press Ctrl+C to exit):"  # Show prompt only once

    while true; do
        # Read input expression from user
        read -p "$ " expression  # Show '>' as a minimal prompt

        # If the input is empty, continue to next iteration
        [[ -z "$expression" ]] && continue

        # Replace π with its value and evaluate the expression using bc
        result=$(echo "$(replace_pi "$expression")" | bc -l 2>/dev/null)

        # Check for invalid input (bc returns an empty string on error)
        if [[ -z "$result" ]]; then
            echo "Error: Invalid expression. Try again."
        else
            echo "= $result"
        fi
    done
}

# Handle Ctrl+C to exit gracefully
trap "echo -e '\nCalculator Terminated. Goodbye!'; exit" SIGINT

# Run the calculator
run_calculator

