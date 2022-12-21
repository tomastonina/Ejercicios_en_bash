#!/bin/bash

echo "----Create a bash script named cores.sh that prints out the number of"
echo "    CPU cores you have in your system----"
cant_cores=$(nproc)

echo "Mi sistema tiene $cant_cores nucleos"
