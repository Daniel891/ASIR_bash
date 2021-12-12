#! /bin/bash

clear;

function users_connect () {
	who;
};

function disk_space () {
	df -h;
}

###MAIN###

echo "- 0 - Fin";
echo "- 1 - Mostrar la lista de usuarios conectados";
echo "- 2 - Mostrar el espacio en el disco";
echo "";

read -p "Su opción: " X;

case $X in
	0) 
		echo "Saliendo...";
		exit
		;;
	1)
		users_connect;
		exit
		;;
	2)
		disk_space;
		exit
		;;
esac

exit;

