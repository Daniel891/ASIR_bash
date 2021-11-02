#! /bin/bash

clear;

while [ -z $1 ] || ( ! [ "$1" == "-p" ] && ! [ "$1" == "-c" ] ) || [ $# -gt 2 ]; do
	echo "EL PROGRAMA FUNCIONA AÑADIENDO -c O -p SEGUIDO DEL ARGUMENTO DE BÚSQUEDA. CON LA OPCIÓN -c EL ARGUMENTO DEBERÁ SER UN NÚMERO
	ENTERO MAYOR QUE 0 PARA QUE BUSQUE TODOS LOS ARCHIVOS REGULARES CON ESA LONGITUD. CON LA OPCIÓN -p EL ARGUMENTO SERÁ UNA CADENA DE 
	CARACTERES PARA QUE BUSQUE TODOS LOS QUE SE LLAMEN IGUAL";

	exit;
done;

if [ "$1" == "-c" ] && [[ $2 == +([[:digit:]]) ]] && [ $2 -gt 0 ]; then
	N="";

	for (( A=0; A<$2;A++ )); do
		N=${N}?;
	done;

	find / -type f -name $N -printf '%f \n' 2>/dev/null;
	exit;
elif [ "$1" == "-p" ] && [[ $2 == +([[:alnum:]]) ]] && ! [ "$(echo $2 | grep \/)" ]; then
	find / -name $2 -printf '%f \n' 2>/dev/null;
	exit;
else
	echo "EL PROGRAMA FUNCIONA AÑADIENDO -c O -p SEGUIDO DEL ARGUMENTO DE BÚSQUEDA. CON LA OPCIÓN -c EL ARGUMENTO DEBERÁ SER UN NÚMERO
	ENTERO MAYOR QUE 0 PARA QUE BUSQUE TODOS LOS ARCHIVOS REGULARES CON ESA LONGITUD. CON LA OPCIÓN -p EL ARGUMENTO SERÁ UNA CADENA DE
	CARACTERES PARA QUE BUSQUE TODOS LOS QUE SE LLAMEN IGUAL";

	exit;
fi

exit;
