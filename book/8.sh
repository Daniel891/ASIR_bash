#! /bin/bash

echo "EJERCICIO 8. CALCULAR EL CUADRADO DE LOS 100 PRIMEROS NÚMEROS PARES";

declare X=0;Y=0;

while [ $X -lt 200 ] ; do
	X=$(($X+2));
	echo "Número $X";

	Y=$(($X*$X));
	echo "El cuadrado es: $Y";
done

exit;


