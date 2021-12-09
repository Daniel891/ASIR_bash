#! /bin/bash

clear;

P=1;
if ! [[ $# -eq 0 ]] ;
then
	for PARAM;
	do
		echo "El parámetro $P es: $PARAM";
		((P++));
	done
else
	echo "ERROR: Debes introducir una lista de parámetros. (listaparam {param1 param2 ...}";
	exit;
fi
