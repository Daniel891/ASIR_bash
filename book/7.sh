#! /bin/bash

#EJERCICIO 7. COMPROBAR SI UN NÚMERO INTRODUCIDO ES POSITIVO O NEGATIVO

declare X=0;

read -p "INTRODUCE UN NÚMERO PARA COMPROBAR SI ES POSITIVO O NEGATIVO --> " X;

if [ $X -gt 0 ] ; then
	echo "EL NÚMERO" $X "ES POSITIVO";
elif [ $X -lt 0 ] ; then
	echo "EL NÚMERO" $X "ES NEGATIVO";
elif [ $X -eq 0 ] ; then
	echo "EL NÚMERO INTRODUCIDO ES CERO";
else
	echo "REINICIE EL PROGRAMA E INTRODUZCA UN PARÁMETRO ADECUADO";
	exit;
fi

#exit;
