#! /bin/bash 

#PROGRAMA QUE LEA N DATOS Y CUANDO SE ACABEN MOSTRARLOS. MIENTRAS NO SE ACABEN IR METIENDO LOS DATOS EN UN VECTOR

clear;

declare I=0;V="";

while [ -z $1 ]; do
	echo "DEBES INTRODUCIR NÚMEROS O DATOS PARA QUE LOS MUESTRE POR PANTALLA";
	exit;
done

for A; do
	V[$I]=$A;
	I=$(($I+1));
done

echo ${V[*]};
