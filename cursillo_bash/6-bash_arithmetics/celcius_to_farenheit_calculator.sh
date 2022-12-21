#!/bin/bash

echo "-------------------------------------------------------------"
echo "-Se ingresa por parametro los celsios para pasar a farenheit-"
echo "-La formula es F = C * (9/5) + 32                           -"
echo "-------------------------------------------------------------"
c=$1
f=$(( $c * (9/5) + 32))
echo "$c grados celsios son iguales a $f grados farenheit"

echo "--------------------------------"
echo "-Ahora la operacion con decimal-"
echo "--------------------------------"
f=$(echo "scale=2; $c * (9/5) + 32" | bc -l)
echo "$c grados celsios son iguales a $f grados farenheit"



