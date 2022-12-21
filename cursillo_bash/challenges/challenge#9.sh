#!/bin/bash

echo "--------------------------------------------------------------------------------------------"
echo "Create a script that will calculate the greatest common divisor of two numbers:"
echo "num1 and num2 (passed as script arguments)"

echo "In mathematics, the greatest common divisor of two or more integers, which are not all zero,"
echo "is the largest positive integer that divides each of the intereges."

echo "Create a function that test whether a number evenly divides num1 and num2"
echo "--------------------------------------------------------------------------------------------"

num1=$1
num2=$2
original1=$1
original2=$2

numeros_primos=(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)
primos_acertados=()
multiplicados=1
function maximo_comun_divisor() {
		for i in ${numeros_primos[@]}; do
			if [ $(($num1 % $i )) -eq 0 ] && [ $(($num2 % $i )) -eq 0 ]; then
				num1=$(($num1 / $i))
				num2=$(($num2 / $i))
				
				primos_acertados+=($i)	
			else
				continue
			fi
		done
}

maximo_comun_divisor

for t in ${primos_acertados[@]}; do
	((multiplicados *= $t))
done

echo "Numeros primos acertados: ${primos_acertados[@]}"
echo "MUltiplicacion total: $multiplicados"
echo "EL maximo comun divisor de los numeros $original1 y $original2 es: $multiplicados"
