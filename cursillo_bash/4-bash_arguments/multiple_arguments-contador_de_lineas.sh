#!/bin/bash

cant_lineas_1=$(wc -l < $1)
cant_lineas_2=$(wc -l < $2)
cant_lineas_3=$(wc -l < $3)

echo "Hay $cant_lineas_1 lineas en el archivo $1"
echo "Hay $cant_lineas_2 lineas en el archivo $2"
echo "Hay $cant_lineas_3 lineas en el archivo $3"

