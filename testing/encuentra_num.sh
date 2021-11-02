#! /bin/bash


#encuentra <cadena>

#ENUNCIADO: LEER PARÁMETRO DE ENTRADA (UNA CADENA), Y SI ES CUALQUIER NÚMERO ENTRE 0 Y 9 (INCLUIDOS), 
#ESCRIBIR "HAS ESCOGIDO UN NÚMERO". SI NO ES NINGUNA DE LAS OPCIONES MOSTRAR "CADENA INVÁLIDA".

clear;

if [ $# -eq 1 ];
then
	case $1 in [0-9])
		echo "HAS ELEGIDO UN NÚMERO";
		;;
	*)
		echo "CADENA INVÁLIDA";
		;;
	esac;

else 
	echo "DEBES INTRODUCIR UN NÚMERO ENTRE 0 Y 9 (INCLUIDOS)";
	exit;

fi

exit;


