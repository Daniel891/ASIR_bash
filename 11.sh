#! /bin/bash

#EJERCICIO 11. PROGRAMA PARA SABER SI UN NÚMERO ES POSITIVO O NEGATIVO

declare N=0;

until [ $N -gt 0 ] && [ $N -lt 0 ] && [ $N -eq 0 ] ;
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
	done

exit;

