#!/bin/bash

echo "-----------------------------------------------------------------------------------------"
echo "----Create a bash script named cal.sh that would display the calendar of a giver year----"
echo "-----------------------------------------------------------------------------------------"

echo "Ingresa un anio aleatorio porfis"
read anio

echo "El anio ingresado es: $anio"

echo "Aca te paso el calendario para el $anio:"
calendario=$(cal $anio)

echo "$calendario"


