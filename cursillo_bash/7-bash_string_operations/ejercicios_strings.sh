#!/bin/bash

echo "---------------------------------------------------"
echo "-SABER EL TAMANIO DE UN STRING (CONTAR LAS LETRAS)-"
echo "---------------------------------------------------"

echo "Ingresa tu nombre para contar el string_length"
read nombre
echo "${#nombre}"

echo "------------------------------"
echo "-CONCATENAR 2 CADENAS/STRINGS-"
echo "------------------------------"

echo "Ingresa tu apellido asi lo juntamos con el nombre"
read apellido

nombre_completo=$nombre$apellido
echo $nombre_completo

echo "-------------------------------------------------------------------"
echo "-ENCONTRAR UN SUBSTRING DENTRO DE LA CADENA/STRING (MEDIO USELESS)-"
echo "-------------------------------------------------------------------"

echo "Cadena: picopalqueleeXd. Substring que busco: Xd. Esta en la posicion 14"
cadena1="picopalqueleeXd"
substring="Xd"
expr index "$cadena1" "$substring"

echo "--------------------------------------------------"
echo "-EXTRAER UN SUBSTRING DE UNA CADENA/STRING-"
echo "--------------------------------------------------"
echo 'echo "${cadena1:0:4}" ME VA A TRAER PICO'

echo "${cadena1:0:4}"

echo "--------------------------------"
echo "-REEMPLAZAR PARTE DE UNA CADENA-"
echo "--------------------------------"

echo 'echo ${cadena/viejo_substring/nuevo_substring}'
echo 'echo ${cadena1/pico/verga}'

echo ${cadena1/pico/verga}

echo "------------------------------------------------"
echo "-BORRAR UN SUBSTRING DE UNA CADENA (SI SE QUIERE PARA SIEMPRE HAY QUE HACERLO SIN EL ECHO, O SEA IGUALANDOLO A UNA VARIABLE-"
echo "------------------------------------------------"

cadena2="me_llamo_tomas_tonina_hola"

echo 'echo ${cadena/substring_a_borrar}'
echo 'echo ${cadena2/_}'
echo 'echo ${cadena2//_} SI QUIERO BORRAR TODAS LAS INSTANCIAS DE ESE SUBSTRING'

echo "${cadena2//_}"

echo "------------------------------------------------"
echo "-CONVERTIR UNA CADENA A MAYUSCULAS O MINUSCULAS-"
echo "------------------------------------------------"

echo 'Si quiero poner todo en mayusculas uso ^^, si quiero minusculas uso ,,' 
echo '(si pongo 1 en vez de 2 solo cambia el primer char)'
echo 'echo ${nombre1^^}'
echo 'echo ${nombre2,,}'

nombre1="tomastonina"
nombre2="JOEBIDEN"
echo ${nombre1^^}
echo ${nombre2,,}


