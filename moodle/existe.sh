#! /bin/bash

clear;

if [[ $1 ]] && [ $# -eq 1 ];
then
	if [ "$(cut -f1 -d":" /etc/passwd | grep -w $1)" ]; 
	then
		echo "EL USUARIO $1 EXISTE";
		dir=$(grep -w "$1" /etc/passwd | cut -d: -f6);
		id=$(grep -w "$1" /etc/passwd | cut -d: -f3);
		gp=$(grep -w $(grep -w $1 /etc/passwd|cut -f4 -d':') /etc/group| cut -f1 -d:);
		ejc=$(grep -w "$1" /etc/passwd | cut -d: -f7);
		pas=$(grep -w "$1" /etc/passwd | cut -d: -f2);
	
		echo "Su directorio de trabajo es: $dir";
		echo "El identificador es: $id";
		echo "Pertenece al grupo: $gp";
		echo "Cuando se conecta al sistema se ejecuta: $ejc";

		if [ "$pas" == "x" ];
		then
			echo "Tiene palabra de paso";
		else
			echo "No tiene palabra de paso";
		fi
		exit;
	else
		echo "EL USUARIO NO EXISTE";
		exit;
	fi

else
	echo "El programa funciona añadiendo como argumento un nombre de usuario para comprobar si existe";
	exit;
fi

exit;
