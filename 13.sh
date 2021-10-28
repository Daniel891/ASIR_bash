#! /bin/bash

echo "EJERCICIO 13. MOSTRAR LOS PRIMEROS 100 MÚLTIPLOS DE 3";

declare X=3;Y=0;

until [ $Y -eq 100 ] ;
	do
		Y=$(($Y+1));
		X=$(($X*$Y));
		echo "EL MÚLTIPLO $Y ES:" $X;
	done

exit;


