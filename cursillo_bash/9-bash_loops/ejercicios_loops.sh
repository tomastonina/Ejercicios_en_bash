#!/bin/bash

echo "-----------------------------------------------------------------------------------------------"
echo "Hay 2 tipos de FOR loops en bash, tenemos el C-Style for loops y el list-range for loops como python"
echo "-----------------------------------------------------------------------------------------------"

echo "-------------------------------------------------"
echo "TENENOS LA FORMA 'ESTILO C' (muy parecido a c++):"
echo "for ((i = 0; i < 10; i++)); do"
echo "     contenido_aca"
echo "done"
echo "-------------------------------------------------"

for ((i = 0; i < 10; i++)); do
	echo "HOla wachin, esta es la forma tipo c++ $i"
done

echo "-------------------------------------------------"
echo "Y TAMBIEN TENENOS LA FORMA 'PYTHON':"
echo "for i in {0..9}; do"
echo "     contenido_aca"
echo "done"
echo "-------------------------------------------------"

for i in {0..9}; do
	echo "HOla wachin, esta es la forma tipo python $i"
done

echo "--------------------------------------------------------------------------"
echo "Ahora como ejemplo voy a listar todos los archivos de un dir usando el for"
echo "--------------------------------------------------------------------------"

for i in /*; do
	echo $i
done

echo "-------------------------------------------------------------------------------------------------"
echo "AHORA EJEMPLO WHILE LOOP, LA DIF ES QUE EL WHILE DEPENDE DE UNA CONDICION PARA TERMINAR (PARA MI)"
echo "-------------------------------------------------------------------------------------------------"

echo "------------------------------------------------------------------------"
echo "Tabla de multiplicacion del 5, cuando el num llegue a 10 termina el loop"
echo "------------------------------------------------------------------------"

num1=1

while [ $num1 -le 10 ]; do
	echo $(($num1 * 5))
	num1=$(($num1 + 1))
done

echo "-----------------------------------------------------------------------------------------------"
echo "HAY OTRO LOOP QUE ES EL UNTIL, ES IGUAL AL WHILE SOLO QUE CAMBIA LA PALABRA WHILE POR UNTIL"
echo "Y ADEMAS Q VA A PARAR DE LOOPEAR CUANDO LA CONDICION SEA FALSA (O SEA ES AL REVEZ, LO OPUESTO)"
echo "-----------------------------------------------------------------------------------------------"

num1=1
until [ $num1 -gt 10 ]; do
        echo $(($num1 * 8))
        num1=$(($num1 + 1))
done

echo "--------------------------------------------"
echo "NAVEGAR POR UN ARRAY USANDO UN FOR COMO LOOP"
echo "--------------------------------------------"
echo "array=(1 6 8 10 60 80 "tomas")"
array=(1 6 8 10 60 80 "tomas")

echo "------------------------"
echo "Ahora paso y muestro cada elemento del array usando for"
echo "------------------------"

for i in ${array[@]}; do
	echo $i
done

echo "---------------------------------------------------"
echo "EJEMPLO USANDO BREAK PARA FORZAR LA SALIDA DEL LOOP"
echo "---------------------------------------------------"

echo "-----------------------"
echo "Si un elemento es igual a 3, se fuerza la salida del loop con break"
echo "-----------------------"

for i in {0..20}; do
	echo $i
	if [ $i -eq 3 ]; then
		break
	fi
done

echo "--------------------------------------------------------------------"
echo "EJEMPLO USANDO CONTINUE PARA FORZAR A QUE SIGA EL SIGUIENTE ELEMENTO"
echo "--------------------------------------------------------------------"

echo "-----------------------"
echo "Si el resto es diferente de 0 entonces son impares y no se muestran usando el continue"
echo "Forzando al siguiente elemento a correr"
echo "-----------------------"


for i in {0..20}; do
	if [ $(($i % 2)) != 0 ]; then
		continue
	fi
	echo $i
done


