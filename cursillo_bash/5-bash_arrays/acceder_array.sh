#!/bin/bash

files=("archivo1" "archivo2" "archivo3")

echo "------------------------------------------"
echo "-Mostrando diferentes elementos del array-"
echo "------------------------------------------"
echo ${files[2]}
echo ${files[1]}
echo ${files[0]}

echo "--------------------------------------------"
echo "-Va a mostrar todos los elementos del array-"
echo "--------------------------------------------"
echo ${files[*]}

echo "-----------------------------------------------------------"
echo "-Va a mostrar la cantidad de elementos que hay en el array-"
echo "-----------------------------------------------------------"
echo ${#files[@]}

echo "-----------------------------------------------------"
echo "-Reemplazar el contenido en la posicion 1 del vector-"
echo "-----------------------------------------------------"
files[0]="archivo_nuevo1"
echo ${files[0]}

echo "-----------------------------------"
echo "-Aniadir nuevos elementos al array-"
echo "-----------------------------------"

files+=("archivo_agregado_4")
echo ${files[*]}

echo "-----------------------------------------------"
echo "-Borrar elementos al array o el array completo-"
echo "-----------------------------------------------"
unset files[3]
echo ${files[*]}
unset files
echo ${files[*]}

echo "------------------------------------------------------------------------------------------------------"
echo "-Crear un array hibrido (Distintos data types aunque bash sea datatype blind, numeros, strings, etc.)-"
echo "------------------------------------------------------------------------------------------------------"
array_hibrido=("tomas" "yomama" 123 "ONly" 44)
echo ${array_hibrido[*]}

echo "Nombre: ${array_hibrido[0]}"
echo "Edad: ${array_hibrido[4]}"
