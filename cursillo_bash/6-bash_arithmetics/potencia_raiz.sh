#!/bin/bash

echo "----------------------------------------------"
echo "-Para las potencias se usa doble asterisco **-"
echo "Se ingresan 2 numeros por parametro          -"
echo "----------------------------------------------"

num1=$1
num2=$2

total_potencia=$(($num1 ** $num2))
echo "$num1⁰$num2=$total_potencia"

echo "-------------------------------------------------"
echo "-Ahora con las raices se utiliza el porcentaje %-"
echo "-------------------------------------------------"
total_raiz=$(($num1 % $num2))
echo "$num1%$num2=$total_raiz"
