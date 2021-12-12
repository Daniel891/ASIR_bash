#! /bin/bash

clear;

function limpieza () {
	basura=$(find /home/$USER -size 0 -type f);

	for fichero in $basura;
	do
		rm -i $fichero;
	done
};

function sin_espacio_d () {
	ESPACIO=$(df / | tail -1 | awk '{print $5}' | tr -d "%");

	if [ $ESPACIO -gt 80 ]; 
	then
		echo "Tasa de utilización del sistema de archivos raíz: ALTA";
	elif [ $ESPACIO -lt 10 ]; then
		echo "Tasa de utilización del sistema de archivos raíz: BAJA";
	else
		echo "Tasa de utilización del sistema de archivos raíz: NORMAL";
	fi
};


###MAIN###

echo "0 - Fin";
echo "1 - Eliminar los archivos de tamaño 0 de mi directorio principal";
echo "2 - Controlar el espacio de disco del SA raíz";
echo "";

read -p "Su opción: " X;

case $X in 
	0)
		echo "Saliendo...";
		exit
		;;
	1)
		limpieza;
		exit
		;;
	2)
		sin_espacio_d;
		exit
		;;
esac

exit;
