#! /bin/bash

clear;

declare A;

while [ -z $1 ] || ! [ ${#1} -eq 3 ] || ! [ $# -eq 1  ]; do
        echo "ERROR";
        exit;
done

if [[ $1 == +([[:digit:]]) ]] && [ $1 -gt 0 ]; then
	if [ ${1:1:1} -eq 0 ]; then
		echo $1;
		exit;
	else
		echo "ERROR";
		exit;
	fi
else echo "ERROR";
fi

exit;
