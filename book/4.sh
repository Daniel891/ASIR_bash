#! /bin/bash

echo "EJERCICIO 4. SUMA DE LOS 10 PRIMEROS NÚMEROS PARES";

declare X=0;Y=0;

until [ $X -eq 20 ];
	do
		X=$(($X+2));
		Y=$(($Y+$X));
	done

echo "LA SUMA DE LOS 10 PRIMEROS NÚMEROS PARES ES:" $Y;

#exit;
