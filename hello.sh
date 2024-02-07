#!/usr/bin/bash 

GREET="Hello, Ruby."

echo $GREET

quotes=(
    "The only way to do great work is to love what you do - Steve Job"
    "The way to get started is to quit talking and begin doing - Walt Disney"
    "Believe what you can and you're halfway there - Theodore Roosevelt"
    "Doubt kils more dreams than failure ever will - Suzy Kassem"
)

# generate random index of quotes
randomIndex=$((RANDOM % ${#quotes[@]}))

echo "${quotes[$randomIndex]}"