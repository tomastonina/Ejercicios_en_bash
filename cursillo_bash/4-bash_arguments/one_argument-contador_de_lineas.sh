#!/bin/bash

#GUARDO EL PRIMERP PARAMETRO INGRESANDO EN LA VARIABLE "FILE"
file=$1
cant_lineas=$(wc -l < $file)
echo "Hay $cant_lineas lineas en el archivo $file"

exit 0

