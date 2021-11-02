#! /bin/bash

#EJERCICIO 14. CALCULAR LA SUMA DE TODOS LOS MÚLTIPLOS DE 5 QUE SE INDIQUEN

declare X=0;Y=1;M=0;

read -p "INDICA CUÁNTOS MÚLTIPLOS DE 5 QUIERES SUMAR--> " N;

until [ $Y -gt $N ] ;
	do
		M=$((5*$Y));
		X=$(($X+$M));
		Y=$(($Y+1));
	done

echo "La suma de los $N primeros múltiplos de 5 es: $X";

exit;
