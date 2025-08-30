#!/bin/bash

# Prompt user for a single lowercase character
read -p "Enter a lowercase character: " char

# Check if input is a single lowercase letter
if [[ ! "$char" =~ ^[a-z]$ ]]; then
    echo "Invalid input. Please enter a single lowercase letter (a-z)."
    exit 1
fi

# Check if the character is a vowel
case "$char" in
    a|e|i|o|u)
        echo "$char is a vowel."
        ;;
    *)
        echo "$char is not a vowel."
        ;;
esac
