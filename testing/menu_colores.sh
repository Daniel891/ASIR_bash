#! /bin/bash

#El programa ofrecerá 4 colores entre los que debe elegir la persona que ejecute el programa.

clear;

declare N=0;

PS3="ELIGE UN COLOR: ";

select COLOR in AZUL ROJO VERDE BLANCO SALIR;
do
	if [ $REPLY -gt 5 ] || [ $REPLY -lt 0 ] 
	then
		echo "Debes elegir una de las opciones";
	elif [ $REPLY -eq 5 ];
	then
		exit;
	elif [ $REPLY -gt 0 ] && [ $REPLY -lt 6 ]
	then
		echo "EL COLOR ESCOGIDO ES EL $COLOR"
		exit;
	else 
		echo "PARÁMETRO INTRODUCIDO ERRÓNEO";
		exit;
	fi
done
exit;
