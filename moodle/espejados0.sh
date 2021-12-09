#! /bin/bash

clear;

B='';
#C=$((${#1}-1));
C=${#1};


for ((I=0;I<=${#1};I++)); do
	B[$I]=${1:$C:1};
	((C--));
done

echo $1:${B[@]} | tr -d [:blank:];

exit;
