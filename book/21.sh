#! /bin/bash

#EJERCICIO 21. HACER UN RELOJ

declare H=0;M=0;S=0;

until [ $H -eq 23 ] ;
	do
		H=$(($H+1));
		M=0;

		until [ $M -eq 59 ] ;
			do
				M=$(($M+1));
				S=0;

				until [ $S -eq 59 ] ;
					do
						S=$(($S+1));
						echo "$H:$M:$S";
					done
			done
	done

exit;
