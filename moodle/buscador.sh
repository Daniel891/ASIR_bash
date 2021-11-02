#! /bin/bash -x

clear;

while [ -z $1 ] || ( ! [ "$1" == "-p" ] && ! [ "$1" == "-c" ] ) || [ $# -gt 2 ]; do
	echo "EL PROGRAMA FUNCIONA AÑADIENDO -c O -p SEGUIDO DEL ARGUMENTO DE BÚSQUEDA. CON LA OPCIÓN -c EL ARGUMENTO DEBERÁ SER UN NÚMERO
ENTERO MAYOR QUE 0 PARA QUE BUSQUE TODOS LOS ARCHIVOS REGULARES CON ESA LONGITUD. CON LA OPCIÓN -p EL ARGUMENTO SERÁ UNA CADENA DE 
CARACTERES PARA QUE BUSQUE TODOS LOS QUE SE LLAMEN IGUAL";

	exit;
done;

if [ "$1" == "-c" ] && [[ $2 == +([[:digit:]]) ]] && [ $2 -gt 0 ]; then
	B=find / -type f;
	for A in B; do
		if [ ${#A} -eq ${#$2};then
			echo $A;
		fi
	done;	
	exit;
fi

exit;
