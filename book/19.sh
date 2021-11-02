#! /bin/bash

#EJERCICIO 19. CALCULAR FACTORIALES HASTA QUE SE INDIQUE.

declare F=1;K=0;

while [ $K -eq 0 ] ;
	do
		read -p "INDICA UN NÚMERO PARA CALCULAR SU FACTORIAL--> " N;

		until [ $N -eq 1 ] ;
			do
				F=$(($F*$N));
				N=$(($N-1));
			done

		echo "EL FACTORIAL ES: $F";
		read -p "INTRODUCE 0 PARA CALCULAR OTRO NÚMERO, O 1 PARA TERMINAR--> " K;
		F=1;
	done

exit;
