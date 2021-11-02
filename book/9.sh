#! /bin/bash

echo "EJERCICIO 9. CALCULAR LA SUMA DEL CUBO DE LOS 100 PRIMEROS NÚMEROS IMPARES";

declare X=1;Y=0;S=0;

while [ $X -lt 199 ] ; do
	Y=$(($X*$X*$X));	

	S=$(($S+$Y));	

	X=$(($X+2));

done

echo "EL RESULTADO DE LA SUMA ES: $S";
exit;


