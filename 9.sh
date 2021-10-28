#! /bin/bash

echo "EJERCICIO 8. CALCULAR EL CUBO DE LOS 100 PRIMEROS NÚMEROS IMPARES";

declare X=1;Y=0;

while [ $X -lt 199 ] ; do
	X=$(($X+2));
	echo "Número $X";

	Y=$(($X*$X));
	echo "El cubo es: $Y";
done

exit;


