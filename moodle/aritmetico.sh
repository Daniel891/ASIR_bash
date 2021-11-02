#! /bin/bash

if [ $# -eq 1 ] && [ $1 -gt 0 ]; then
	P=$(($1*$1));
	S=$(($1+$1));
	echo "$1 por $1 es: $P. Y $1 + $1 es: $S";
else
	echo "Debes introducir un número entero positivo y mayor que 0";
	exit;
fi

exit;
