#! /bin/bash

clear;

if [ -f /var/tmp/$USER.mirror ];then
	rm /var/tmp/$USER.mirror;
fi

if ! [ -d $1 ] && ! [ $# -eq 1 ];then
	echo "El programa funciona añadiendole un único parámetro posicional que debe ser un directorio";
else
	F=$(find $1 -printf '%f \n');
	
	for A in $F;do
		#L=$(($(wc -m $A)-1));
		
		for (( I=0;I<$(wc -m $A);I++ ));do
			
