#! /bin/bash
#mientras que  el valor de la variable sea alfanumerico  se realizara, si es un parametro diferente 
# el script n$

if ! [ $# -eq 0 ] && [ $# -lt 6 ] && ! [ "$(echo  $@ | sed -n -e /[[:punct:]]/p -e /[[:cntrl:]]/p)" ]; then
	echo "pasa condiciones"
	for f in $@; do
		if [ "$(find / -iname $f -type f -perm -u+r,g+r,o+r 2>/dev/null)" ]; then
			ls -l "$(find / -iname $f -type f -perm -u+r,g+r,o+r 2>/dev/null)" 2>/dev/null;
		fi
	done
else
	echo "no pasa condiciones, acaba el programa"
fi
exit;
