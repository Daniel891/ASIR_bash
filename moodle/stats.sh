#! /bin/bash

clear;

for A in $(cat alumnos.txt); do
	echo $A | tr -s '|' '	';
done

exit;
