#!/usr/bin/bash 

# echo "my bash script"

GREET="Hello, Ruby."

echo $GREET

quotes=(
    "The only way to do great work is to love what you do - Steve Jobs"
    "Believe what you can and you're halfway there - Theodore Roosevelt "
    "The way to get started is to quit talking and begin doing - Walt Disney" 
)

# get a random index of quotes
randomIndex=$((RANDOM % ${#quotes[@]}))

echo "${quotes[$randomIndex]}"
