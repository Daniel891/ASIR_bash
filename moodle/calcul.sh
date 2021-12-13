#! /bin/bash

clear;

function esNum () {
	if [[ $1 == +([[:digit:]]) ]]; then
		echo "verdadero";
        else echo "falso";
        fi
};

function suma () {
	local SUMA=0;
	local NUM;

	for NUM; do
		if [ $(esNum $NUM) == "verdadero" ]; then
			SUMA=$(($NUM+$SUMA));
		fi
	done

	echo $SUMA;
};

function producto () {
        local PRODUCTO=1;
	local NUM;

        for NUM; do
                if [ $(esNum $NUM) == "verdadero" ]; then
                        PRODUCTO=$(($NUM*$PRODUCTO));
                fi
        done

        echo $PRODUCTO;
};


if [ $1 == "producto" ]; then
	producto $@;
	exit;
elif [ $1 == "suma" ]; then
	suma $@;
	exit;
else
	echo "ERROR, el programa sigue el siguiente funcionamiento: ~ calcul.sh [producto | suma] numeros...";
	exit;
fi


exit;
