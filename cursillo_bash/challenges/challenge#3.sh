#!/bin/bash

echo "-------------------------------------------------------------------------------------------"
echo "Create a bash script named upper.sh that would display a file content in upper case letters"
echo "The file path must be passed to the script as an argument"
echo "-------------------------------------------------------------------------------------------"

file=$1

echo "-----------------------------------------------------"
echo "Aca abajo esta el contenido del archivo en MAYUSCULAS"
echo "-----------------------------------------------------"
cat $file | tr [a-z] [A-Z]

echo "-----------------------------"
echo "--Hay 2 formas de hacerlo: --"
echo "--tr [a-z] [A-Z]           --"
echo "--tr [:lower:] [:upper:]   --"
echo "-----------------------------"
#cat $file | tr [:lower:] [:upper:]

