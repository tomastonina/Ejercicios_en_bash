#!/bin/bash

echo "---------------------------------------------------------------------------------------------"
echo "---Create a bash script that would ping every single server in the 23.227.36.x subnet     ---"
echo "---where x is a number between 0 and 255. If a ping succeded, display the statement       ---"
echo "---Server 23.227.36.x is up and running. Otherwise, if a ping failed display the statement---"
echo "---Server 23.227.36.x is unreacheble                                                      ---"
echo "---------------------------------------------------------------------------------------------"

for i in {0..255}; do
	ip=23.227.36.$i
	ping -c 2 $ip 2>&1 >/dev/null
	status=$?
	if [ $status != 0 ]; then
		echo "---------------------------------------------------"
		echo "---El server $ip no se puede alcanzar, ta muerto---"
		echo "---------------------------------------------------"
		continue
	fi
	echo "-----------------------------------------------------------"
	echo "---El server $ip esta activo y corriendo de forma normal---"
	echo "-----------------------------------------------------------"
done
