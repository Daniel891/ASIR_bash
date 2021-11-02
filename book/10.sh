#! /bin/bash

echo "EJERCICIO 10. CALCULAR EL PRODUCTO DE LOS NÚMEROS PARES QUE SE ESCOJAN";

declare X=0;Y=1;C=0;

read -p "INTRODUCE CUÁNTOS NÚMEROS PARES QUIERES QUE SE MULTIPLIQUEN--> " N;

until [ $C -eq $N ] ; do
	X=$(($X+2));
	Y=$(($Y*$X));
	C=$(($C+1));
done

echo "EL PRODUCTO FINAL ES: $Y";
exit;
