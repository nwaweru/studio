#!/bin/bash

#
# If getting the 'Bad substitution' error while running 'sh ./substring_ex1.sh',
# you can use 'bash substring_ex1.sh'
#

a="Pancakes"
echo "'$a' is the term to manipulate."

# Printing 'cakes' from a
echo "\${a: -5} gets '${a: -5}' from '$a'"

# Printing 'pan' from a
echo "\${a: 0:3} gets '${a: 0:3}' from '$a'"

# Printing 'nca' from a
echo "\${a: 2:3} gets '${a: 2:3}' from '$a'"

# Printing the size of a
echo "The size of '$a' is ${#a}"
