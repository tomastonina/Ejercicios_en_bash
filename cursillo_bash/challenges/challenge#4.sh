#!/bin/bash

echo "---------------------------------------------------------------------------"
echo "You need to edit the shell script so that the num array becomes sorted"
echo "Restrictions: You are only allowd to add and delete elements from the array"
echo "---------------------------------------------------------------------------"

num=(1 2 3 4 5)
echo "Antes de mezclar el array"
echo ${num[*]}

unset num[3]
num+=(4)

echo "Despues de mezclar el array"
echo ${num[*]}


