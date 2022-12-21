#!/bin/bash

echo "-------------------------------------------------------------------------------------------------------------"
echo "-Se pasa por parametro los gb para calcular los mega y kilobytes usando la multiplicacion con el asterico * -"
echo "-------------------------------------------------------------------------------------------------------------"

gigas=$1
megas=$(($gigas * 1024))
kilos=$(($gigas * 1024 * 1024))

echo "$gigas gb es igual a $megas mb"
echo "$gigas gb es igual a $kilos kb"

echo "------------------------------------------------------------------------------------------------------------"
echo "-Ahora con el tema de la division se usa el slash / pero no da el resuldado completo, no pone los decimales-"
echo "-Si quiero tener los decimales necesito usar el comando | bc -l. Si quiero limitar los decimales uso scale=2"
echo "-En este caso me muestra los primeros 2 decimales: echo 'scale=2; operaciones_aca'                         -"
echo "------------------------------------------------------------------------------------------------------------"

division=$((5/2))
echo "5/2 da como resultado: $division"

echo "Si ahora usamos el comando | bc -l nos da los decimales"
echo "scale=2; 5/2" | bc -l
