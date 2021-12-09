#! /bin/bash

clear;

N=$(ps -u -h $1 | wc -l);
N=$(($N-2));
PANTIG=$((ps -uh $1 | awk '{print $11}' | head -1));
echo "USUARIO: " $USER;
echo "*****************************************************************";
echo "PROCESOS EN EJECUCIÓN USUARIO: " $N;
echo "PROCESO MÁS ANTIGUO DEL USUARIO: "$PANTIG;
echo "*****************************************************************";
echo "DIRECTORIOS DEL USUARIO: ";
echo "FICHEROS REGULARES DEL USUARIO: ";
echo "TAMAÑO TOTAL FICHEROS USUARIO: 5566564656 B";
echo "USO DE DISCO DURO USUARIO: 5.08%";
echo "*****************************************************************";
