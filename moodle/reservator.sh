#! /bin/bash 

clear;

function shscan () {
	if [ "$(file $1 | grep "script")" ];then 
		echo "si";  
	fi
}

function errores() {
	echo "-------------Lista de posibles errores-----------"
        echo "1) El programa necesita mínimo un argumento. [-v (-verbose)] palabra reservada"
        echo "2) No pueden aparecer signos especiales,metacaraceres ni de puntuacion"
        echo "3) En caso de proporcionar dos parametros el primero debe ser '-v' o '-verbose'"
        exit;
}

declare A;V;
declare -a P=('case' 'do' 'done' 'elif' 'else' 'esac' 'fi' 'for' 'function' 'if' 'in' 'select' 'then' 'until' 'while' 'time');

case $# in
        0) errores;;
        1) $V=0;;
        2) if ! [ "$1" = "-verbose" ] || ! [ "$1" = "-v" ]; then errores; else PR=$2; V=1; fi;;
        *)errores;;
esac

#main

for A in $(find /etc/init.d -type f); do
	if [ "shscan $A" == "si" ]; then
		if [ $V -eq 1 ];then
			grep -nH $P $A;
			exit;
		else
			grep -nH $P $A | cut -d":" -f1,2;
			exit;
		fi
		exit;
	fi
done

exit;
