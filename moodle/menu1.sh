#! /bin/bash

PS3="ESCOGE UNA OPCIÓN --> ";


select item in "Borrar la pantalla" "Listar el contenido del directorio actual" "Identificar el usuario actual" "Listar el contenido del directorio HOME del usuario actual" "Salir"
do
	case $REPLY in
		1)	clear
			;;
		2)	echo "Contenido del directorio actual";
			ls -l ./
			;;
		3)	echo "El usuario actual es: $USER"
			;;
		4)	echo "Contenido del directorio HOME de $USER";
			ls -l /home/$USER
			;;
		5)	echo "Saliendo...";
			exit
			;;
	esac
done

exit;
