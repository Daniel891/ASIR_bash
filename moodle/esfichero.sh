#! /bin/bash

clear;

if ! [ $# -eq 0 ] && [ $# -le 5 ] && [[ $* == +([[:alnum:]]) ]] ;
then
	for A in $@; do
		if [[ "$(find / -iname $A -type f -perm -u+r,g+r,o+r 2>/dev/null)" ]]; then
			echo "$(find / -iname $A -type f -perm -u+r,g+r,o+r 2>/dev/null)";
#			ls -l $B 2>/dev/null;
		else 
			echo "nada";
		fi
	done
else 
	echo "SE DEBE AÑADIR COMO ARGUMENTO EL NOMBRE DE, COMO MÁXIMO 5 FICHEROS, CON NOMBRES CON CARÁCTERES ALFANUMÉRICOS";
fi
exit;
