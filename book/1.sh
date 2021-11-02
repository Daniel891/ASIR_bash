#! /bin/bash

#SUMA DE DOS NUMEROS Y MUESTRA RESULTADO
#VERSION CON CAPTURA DE DATOS DE FORMA INTERACTIVA

Z=0;
X=0;
Y=0;

read -p "Dame un número " X;
read -p "Dame otro número " Y;

Z=$(($X+$Y));

echo "La suma es $Z";

exit;




