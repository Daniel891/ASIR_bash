#! /bin/bash

clear;

function extracto () {
	echo;
	read -p "¿Qué clase quiere consultar? (5to/6to) > " CLASE;
	
	for A in $(cat alumnos.txt); do
		if [ "$(echo $A | awk -F"|" '{print $2}')" == $CLASE ]; then
			echo $A | tr -s '|' '	';
		fi
	done

	exit;
};

function promedio () {
        echo;

	local SUMA=0;
	local NOTA=0;
	local TOTAL=0;

        read -p "¿Qué clase quiere consultar? (5to/6to) > " CLASE;

        for A in $(cat alumnos.txt); do
                if [ $(echo $A | awk -F"|" '{print $2}') == $CLASE ]; then
			NOTA=$(echo $A | awk -F"|" '{print $3}');
			echo "NOTA: " $NOTA;
			SUMA=$(($SUMA+$NOTA));
			((TOTAL++));
                fi
        done

	echo "El promedio de la clase de $CLASE es: " $(($SUMA/$TOTAL));

        exit;
};


###MAIN###

PS3="Su opción: ";

select OPTION in "Extracto por clase" "Promedio por clase" "Fin" 
do
	case $REPLY in
		1)
			extracto
			;;
		2)
			promedio
			;;
		3)
			echo "Saliendo...";
			exit
			;;
		*)
			echo "ERROR: Opción no válida"
			break
			;;
	esac
done

exit;
