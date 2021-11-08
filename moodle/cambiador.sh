#! /bin/bash -x

clear;

declare A;V="";

while ! [ -z $1 ] && ! [ ${#1} -eq 3 ] && ! [ $# -eq 1  ]; do
	echo "error";
	exit;
done

if [[ $1 == +([[:digit:]]) ]]; then
	for (( A=0; A<${#1}; A++ ));do
		if [ ${1:$A:1} -ge 0 ] && [ ${1:$A:1} -le 7 ]; then
			V=${V}${1:$A:1};
		elif
			echo "error esos permisos no tienen sentido";
			exit;
		fi
	done
	

else 
	echo "error son letras";
	exit;
fi
