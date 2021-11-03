#! /bin/bash

clear;

while ! [ -z $1 ] && ! [ ${#1} -eq 3 ] && ! [ $# -eq 1  ]; do
	echo "error";
	exit;
done

if [[ $1 == +([[:digit:]]) ]]; then
	echo "va bien supongo";
	exit;
else echo "error son letras";
fi
