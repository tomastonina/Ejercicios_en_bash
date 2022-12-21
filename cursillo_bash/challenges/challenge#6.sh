#!/bin/bash

echo "Create a bash scrit that would do the following:"
echo "-Ask the user to enter a string with asterisks"
echo "-Remove all asterisks (*) in the string"
echo "-Change all the letters in the string to uppercase"
echo "-Output the update string to the terminal"
echo "Restrictions: You are only allowed to use the echo command!"

echo "Por favor ingrese un string que si o si contenga asteriscos (*)"
read cadena1
temp=${cadena1//\*}
temp=${temp^^}
echo "$temp" 
