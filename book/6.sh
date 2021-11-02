#! /bin/bash

echo "EJERCICIO 5. CALCULAR LA SUMA DE LOS 200 PRIMEROS NÚMEROS PARES Y LA SUMA DE LOS 200 PRIMEROS IMPARES";

declare X=0;Y=0;Z=0;

until [ $X -eq 400 ]
	do
		X=$(($X+1));
		Y=$(($Y+$X));
		X=$(($X+1));
		Z=$(($Z+$X));
	done

echo "LA SUMA DE LOS 200 PRIMEROS PARES ES:" $Z;
echo "LA SUMA DE LOS 200 PRIMEROS IMPARES ES:" $Y;

#exit;
