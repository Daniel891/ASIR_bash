#! /bin/bash

clear;

B='';

for ((I=0;I<=${#1};I++)); do
	B=${1:$I:1}${B};
done

echo $1:$B;

exit;
