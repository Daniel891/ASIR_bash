#! /bin/bash

#EJERCICIO 18. CALCULAR EL FACTORIAL DE UN NÚMERO

declare F=1;

read -p "INDICA UN NÚMERO PARA CALCULAR SU FACTORIAL--> " N;

until [ $N -eq 1 ] ;
	do
		F=$(($F*$N));
		N=$(($N-1));
	done

echo "EL FACTORIAL ES: $F";
exit;
