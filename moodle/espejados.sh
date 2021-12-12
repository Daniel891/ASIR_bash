#! /bin/bash 

clear;

function inversion () {
        B='';
#        L=$(($(echo $1 | wc -m)-2));

        for ((I=0;I<=${#1};I++)); do
                B=${1:$I:1}${B};
        done
}

B='';

if [ -f /var/tmp/$USER.mirror ];then
	rm /var/tmp/$USER.mirror;
fi

if ! [ -d $1 ] && ! [ $# -eq 1 ];then
	echo "El programa funciona añadiendole un único parámetro posicional que debe ser un directorio";
else
	F=$(find $1 -printf '%f \n' | sort 2>/dev/null);
	
	for A in $F;do
		inversion $A;
		echo $A:$B >> /var/tmp/$USER.mirror;
	done
	exit;
fi

exit;
