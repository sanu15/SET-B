#!/bin/bash

# Prompt user for salary input
read -p "Enter your salary: " salary

# Check if input is a valid number
if ! [[ "$salary" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a numeric salary amount."
    exit 1
fi

# Convert salary to integer
salary=$((salary))

# Calculate tax based on salary brackets
if [ "$salary" -lt 10000 ]; then
    tax=0
elif [ "$salary" -le 25000 ]; then
    tax=$(echo "scale=2; $salary * 0.05" | bc)
else
    tax=$(echo "scale=2; $salary * 0.10" | bc)
fi

# Display result
echo "Salary: ₹$salary"
echo "Calculated Tax: ₹$tax"
