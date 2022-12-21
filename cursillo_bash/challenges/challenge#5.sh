#!/bin/bash

echo "-------------------------------------------------------------------------------------------------"
echo "-Create a bash script named salary.sh that would calculate the total net salary of and employee -"
echo "-The script would prompt the user to enter a monthly gross salary and a tax rate (in percentage)-"
echo "-Finally, the script would calculate and output the total net annual salary(after tax)          -"
echo "-------------------------------------------------------------------------------------------------"

echo "Por favor ingrese su salario mensual: "
read salario
echo "Por favor ingrese el impuesto que le quitan cada mes de su sueldo en porcentaje"
read impuesto

total_impuesto=$(echo "scale=2; (($impuesto*$salario)/100)*12" | bc -l)
total_salario=$(echo "scale=2; $salario*12" | bc -l)
total_totales=$(echo "scale=2; $total_salario-$total_impuesto" | bc -l)

echo "El salario total anual es de: $total_salario"
echo "El impuesto total anual que te sacan es de: $total_impuesto"
echo "En total te quedas en mano con: $total_totales"


