#! /bin/bash

clear;

declare A;V="";

if [ "$USER" = "root" ]; then
	echo "ERROR: Este programa no puedes ser ejecutado por root";
	exit;
fi

while [ -z $1 ] || ! [ ${#1} -eq 3 ] || ! [ $# -eq 1  ]; do
	echo -e "ERROR: El programa necesita un único parámetro posicional.\n
Este será un número de 3 cifras correspondiente a los permisos que le quiera asignar \n
a todos los archivos regulares a partir del directorio actual";
	exit;
done

if [[ $1 == +([[:digit:]]) ]]; then
	for (( A=0; A<${#1}; A++ ));do
		if [ ${1:$A:1} -ge 0 ] && [ ${1:$A:1} -le 7 ]; then
			V=${V}${1:$A:1};
		else
			echo "ERROR: Estos parámetros no tienen sentido como permisos";
			exit;
		fi
	done
	find . -user $USER -type f -exec chmod $(echo $V) -R {} \;
	echo -e "Se han asignado los permisos $(echo $V) a todos los ficheros regulares a partir \n
del directorio actual";
	exit;
else 
	echo -e "ERROR: El programa necesita un único parámetro posicional.\n
Este será un número de 3 cifras correspondiente a los permisos que le quiera asignar \n
a todos los archivos regulares a partir del directorio actual";
	exit;
fi
