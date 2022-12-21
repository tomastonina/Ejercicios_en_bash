#!/bin/bash

echo "---------------------------------------------------------------------------------------------------"
echo "-Pasar 2 archivos por parametro y que devuelva la cantidad que pesa cada uno y la suma entre ambos-"
echo "---------------------------------------------------------------------------------------------------"

file1=$(du -b $1 | cut -f1)
file2=$(du -b $2 | cut -f1)

echo "EL archivo $1 pesa $file1 kilobytes"
echo "EL archivo $2 pesa $file2 kilobytes"

echo "-------------------------------------------------------------------------------------"
echo "-Si quiero hacer una operacion aritmetica tengo que usar si o si un doble parentesis:"
echo '-total=$((variable1 + variable2))'
echo "-------------------------------------------------------------------------------------"

total=$(($file1 + $file2))

echo "El total de kilobytes entre ambos archivos es de $total"

