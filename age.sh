#!/bin/bash

# Prompt user for age
read -p "Enter your age: " age

# Validate input: must be a positive integer
if ! [[ "$age" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid numeric age."
    exit 1
fi

# Convert age to integer
age=$((age))

# Classify age group
if [ "$age" -lt 13 ]; then
    echo "You are a Child."
elif [ "$age" -ge 13 ] && [ "$age" -le 19 ]; then
    echo "You are a Teenager."
else
    echo "You are an Adult."
fi
