#! /bin/bash

clear;

if [ $# -eq 2 ] && [[ -f $1 ]] && [[ -f $2 ]]; then
	A=$(ls -l $1 | awk '{print $5}');
	B=$(ls -l $2 | awk '{print $5}');
	if [ $A -eq $B ];then
		echo "Los dos archivos pesan lo mismo: $A";
	elif [ $A -gt $B ];then
		echo "El archivo $1 es el mayor de los dos. Tamaño(K): $A";
	else echo "El archivo $2 es el mayor de los dos. Tamaño(K): $B";
	fi
	exit;
else
	echo "Uso: ./compare.sh {archivo1 archivo2}";
fi

exit;
