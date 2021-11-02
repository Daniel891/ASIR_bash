#! /bin/bash

declare P=1;I=0;N=0;

read -p "INSERTA EL NÚMERO DE OPERANDOS--> " N;

until [ $I -eq $N ] ;
	do
		I=$(($I+1));
		read -p "Operando $I--> " V;
#formulación C		((I++));
#formulación C	let I=I+1;
		P=$(($P*$V));
	done

echo "El producto de los $I operandos es" $P;
exit;

