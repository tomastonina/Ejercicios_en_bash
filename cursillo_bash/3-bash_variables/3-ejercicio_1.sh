#!/bin/bash

echo "-----------------------------------------------------------"
echo "----Guardar lo ingresado por el usuario en una variable----"
echo "-----------------------------------------------------------"
echo "Como te llamas?"

read nombre

echo "Hola $nombre"

echo "Tu nombre de usuario es $(whoami)"
echo "Puedo saber tu nombre de usuario sin preguntarte gracias al comando whoami"

echo "---------------------------------------"
echo "----Uso de las variables constantes----"
echo "---------------------------------------"
echo "Voy a declarar una variable constante"
readonly nombre_a="Tomas"
echo "$nombre_a"
echo "La voy a intentar cambiar"
nombre_a=pito
echo "No te deja porque es constante, se usa el comando readonly"

echo "--------------------------------------------------------------------------------------------"
echo "----Guardar el resultado de un comando en una variable o sustituir/reemplazar el comando----"
echo "--------------------------------------------------------------------------------------------"
echo '1ra forma con parentesis: fecha_hoy=$(date)'
fecha_hoy=$(date)
echo $fecha_hoy
echo '2da forma con apostrofes fecha_hoy_2=`date`'
fecha_hoy_2=`date`
echo $fecha_hoy_2
