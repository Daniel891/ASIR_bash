#! /bin/bash 

clear;

declare I=1;
declare A;

while ! [ $# -ge 1 ]; do
	exit;
done

#while [ $i -le $@ ];do
#	echo "El argumento $i es: $($i)"

for A; do
	echo "El argumento $I es: $A";
	I=$(($I+1));
done

if [ $(($I-1)) -eq $# ];then
	echo "Todos los parámetros son:" $@;
	echo "Número total de parámetros:" $#;
	exit;
fi

exit;
