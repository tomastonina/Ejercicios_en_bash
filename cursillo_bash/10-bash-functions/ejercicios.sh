#!/bin/bash

function saludar() {
	echo "HOla wachin"
}
saludar
saludar
saludar
saludar

function error() {
	cualquier_csa_no_funca
	return $?
}
error
echo "El status del ultimo comando ejecutado es: $?"

echo "-----------MUY IMPORTANTE------------"
echo 'El parametro $1 no es lo mismo para el script y la funcion. SI cuando yo ejecuto'
echo 'la shell de esta forma: ./ejercicios.sh 10 50 le estoy pasando parametros al script. NO A LA FUNCION'
echo 'Para pasarle parametros a la funcion lo tengo que hacer dentro de la shell: mi_funcion 10 50, o incluso:'
echo 'mi_funcion $1 $2'

function espar() {
	if [ $(($1 % 2 )) -eq 0 ]; then
		echo "$1 es par"
	else
		echo "$1 es impar"
	fi
}

espar $1
espar 40
espar 51



echo "------------------------------------VARIABLES GLOBALES-------------------------------------"
echo "------------------------------------VARIABLES LOCALES--------------------------------------"

variable1='hola'
variable2='chau'

function variable_local() {
	local variable1='bonjour'
	variable2='goodbye'
	echo "Dentro de la funcion cambie ambas variables, la primera es una variable local ahora"
	echo "Dentro de la funcion: variable1=$variable1 variable2=$variable2"
}

echo "Antes de usar la funcion: variable1=$variable1 variable2=$variable2"
variable_local
echo "Despues de usar la funcion: variable1=$variable1 variable2=$variable2"

echo "######################################################################################"
echo "#####################################  FACTORIAL  ####################################"
echo "######################################################################################"

function factorial() {
	if [ $1 -le 1 ]; then
		echo 1
	else
		ultimo=$( factorial $(( $1 - 1 )))
		echo $(( $1 * $ultimo ))
	fi
}

echo -n "El factorial de 7 es: "
factorial 7

echo -n "El factorial de 3 es: "
factorial 3

echo -n "El factorial de 10 es: "
factorial 10


