#!/bin/bash

# UI Manenoz
echo "========================================="
echo "     Guesser - Futuristic Bash Game      "
echo "     - with love from @nwaweru           "
echo "========================================="

# Set lower and upper limit
lower=1
upper=20

# Generate random number from 1-20
num=$(shuf -i $lower-$upper -n 1)
echo "I have generated a random number. It is between $lower and $upper."

# Ask for user input
read -p "What is the number? " guess

# Ensure a value is entered and it is an integer
while [[ -z "$guess" || $((guess)) != $guess ]];
do
	read -p "I need a number: " guess
done

# Check that the number is between $upper and $lower
if [[ $guess -lt $lower ]]
then
	echo "Your answer cannot be less than $lower"
elif [[ $guess -gt $upper ]]
then
	echo "Your answer cannot be greater than $upper"
else
	# Evaluate the guess
	if [[ $guess -eq $num ]]
	then
		echo "$guess is the number I was looking for!"
	else
		echo "I was looking for $num, not $guess"
	fi
fi