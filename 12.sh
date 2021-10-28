#! /bin/bash

#EJERCICIO 12. PROGRAMA PARA SABER SI UN NÚMERO ES POSITIVO O NEGATIVO

declare N=0;K=0;

until [ $N -gt 0 ] && [ $N -lt 0 ] && [ $N -eq 0 ] || [ $K -eq 1 ] ;
	do
		read -p "INTRODUCE UN NÚMERO PARA SABER SI ES POSITIVO O NEGATIVO--> " N;
		if [ $N -gt 0 ] ; then
			echo "EL NÚMERO $N ES POSITIVO";
		elif [ $N -lt 0 ] ; then
			echo "EL NÚMERO $N ES NEGATIVO";
		elif [ $N -eq 0 ] ; then
               	        echo "EL NÚMERO ES CERO";
		else echo "INTRODUZCA UN PARÁMETRO VÁLIDO";
		fi

		read -p "INTRODUCE 0 PARA PREGUNTAR OTRO NÚMERO, O 1 PARA TERMINAR EL PROGRAMA--> " K;
	done

exit;

