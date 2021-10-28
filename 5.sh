#! /bin/bash

echo "EJERCICIO 5. CALCULAR LA SUMA DE LOS 100 PRIMEROS NÚMEROS IMPARES";

declare X=1;Y=1;

until [ $X -eq 199 ]
	do
		X=$(($X+2));
		Y=$(($Y+$X));
	done

echo "EL RESULTADO DE LA SUMA ES:" $Y;

#exit;
