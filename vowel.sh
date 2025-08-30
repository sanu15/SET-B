#!/bin/bash

# Prompt user for a single character
read -p "Enter a single alphabet character: " char

# Validate input: must be a single alphabet letter
if [[ ! "$char" =~ ^[a-zA-Z]$ ]]; then
    echo "Invalid input. Please enter a single alphabet character (a-z or A-Z)."
    exit 1
fi

# Convert to lowercase for uniform comparison
char_lower=$(echo "$char" | tr 'A-Z' 'a-z')

# Check if it's a vowel
case "$char_lower" in
    a|e|i|o|u)
        echo "$char is a vowel."
        ;;
    *)
        echo "$char is not a vowel."
        ;;
esac
