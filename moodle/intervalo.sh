#! /bin/bash

clear;

PS3="ELIGE UNA OPCIÓN: ";

select LETRA in a b c d e f g h i j k l m n o p q r s t TERMINAR;
do
	if [ $REPLY -ge 1 ] && [ $REPLY -lt 11 ]; then
		echo $(($REPLY*$REPLY));
	elif [ $REPLY -ge 11 ] && [ $REPLY -lt 21 ]; then
		echo $(($REPLY*$REPLY*$REPLY));
	elif [ $REPLY -eq 21 ]; then
		break;
	else echo "INTRODUCE UN VALOR DENTRO DE LOS PARÁMETROS";
	
	fi
done
exit;
