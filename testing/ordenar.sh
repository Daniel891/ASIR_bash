#! /bin/bash

#PROGRAMA QUE RECIBE CUALQUIER CANTIDAD DE NÚMEROS (ENTEROS POSITIVOS), LOS METE EN UN VECTOR Y LOS DEVUELVE ORDENADOS ASCENDENTEMENTE

clear;

declare C=0;
declare P=0;
declare I=1;
declare T=0;

for N;
do
	if [[ $N != +([[:xdigit:]]) ]];
	then
		echo "ERROR: Este programa solo funciona recibiendo números enteros positivos";
		exit;
	fi
	V[C]=$N;
	((C++));
done

while (( $P <= ${#V[@]} ));
do
	while (( $I < ${#V[@]} ));
	do
		if [[ ${V[$P]} -lt ${V[$I]} ]];
		then
			((I++));
		else
			T=${V[$I]};
			V[I]=${V[$P]};
			V[P]=$T;
			((I++));
		fi
	done

	((P++));
	I=$(($P+1));
done

echo ${V[@]};
