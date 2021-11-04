#! /bin/bash

clear;

declare A;

while ! [ -z $1 ] && ! [ ${#1} -eq 3 ] && ! [ $# -eq 1  ]; do
	echo "error";
	exit;
done

if [[ $1 == +([[:digit:]]) ]]; then
	for (( A=0; A<${#1}; A++ ));do
		echo ${1:$A:1};
	done
	echo "va bien supongo";
	exit;
else echo "error son letras";
fi
