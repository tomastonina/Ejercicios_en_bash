#!/bin/bash

echo "-----------------------------"
echo "-Ejemplo usando solamente IF-"
echo "-----------------------------"

echo "El comando 'whoami' te devuelve con que usuario estas accediendo al sv o consola/terminal, aclaracion"
if [ $(whoami) = 'root' ]; then
	echo "Sos el usuario root"
fi


echo "------------------------"
echo "-Ejemplo usando IF-ELSE-"
echo "------------------------"

if [ $(whoami) = 'root' ]; then
	echo "Sos el usuario root"
else
	echo "NO sos el usuario root"
fi


echo "-------------------------------"
echo "-Ejemplo usando ELIF (ELSE IF)-"
echo "-------------------------------"

echo "Ingresa una edad random"
read edad

if [ $edad -lt 13 ]; then
	echo "Sos un nene"
elif [ $edad -lt 20 ]; then
	echo "Sos un adoslecente"
elif [ $edad -lt 65 ]; then
	echo "Sos un adulto"
else
	echo "Sos un anciano"
fi

echo "----------------------------------------------------------"
echo "-Ejemplo usando IF ANIDADOS (IF DENTRO DE OTRO IF Y ETC.)-"
echo "----------------------------------------------------------"

echo "Ingresa una temperatura random"
read temperatura

if [ $temperatura -gt 15 ]; then
	if [ $temperatura -lt 25 ]; then
		echo "La temperatura esta tranqui, no hace mucho frio ni calor"
	elif [ $temperatura -ge 30 ]; then
		echo "Esta empezando a hacer bastante calor"
	else
		echo "Hace calor pero no tanto"
	fi
else
	echo "Hace tremendo frio, que hermoso"
fi

echo "------------------------------------------"
echo "-Ejemplo usando CASE (multiples opciones)-"
echo "------------------------------------------"

echo "Ingresa cualquier cosa que quieras, un num o letra o string"
read variable
cantidad_caracteres=${#variable}

if [ $cantidad_caracteres != 1 ] && [ $variable != [0-9] ]; then
	echo "Ingresaste una cadena o un numero de mas de 1 digito: $variable"
else
	case $variable in
		[a-z])
			echo "Ingresaste una letra en minuscula" ;;
		[A-Z])
			echo "Ingresaste una letra en mayuscula" ;;
		[0-9])
			echo "Ingresaste un numero" ;;
		*)
			echo "Ingresaste un caracter especial o una cadena" ;;
	esac
fi
