#!/bin/bash

echo "--------------------------------------------------------------------------------------------"
echo "-Create a script that would determine whether or not a given year is a leap year (biciesto)-"
echo "-A year is a leap year if one of the following conditions is satisfied                     -"
echo "-Year is multiple of 400                                                                   -" 
echo "-Year is multiple of 4 and not multiple of 100                                             -"
echo "--------------------------------------------------------------------------------------------"

echo "Ingresa un anio random para saber si es biciesto o no"
read anio
cant_digitos=${#anio}

if [ $cant_digitos -ge 1 ] && [ $cant_digitos -le 4 ]; then
	echo "Esta bien, se procede a ver si es biciesto o no"
else
	echo "Ingresaste mal la cantidad de digitos del anio"
	echo "Finalizado ERROR"
	exit 1
fi
	
if [ $(($anio%4)) == 0 ]; then
	if ! [ $(($anio%100)) == 1 ]; then
		echo "El anio $anio es biciesto"
	else
		echo "El anio $anio no es biciesto"
	fi
else
	echo "El anio $anio no es biciesto"
fi
