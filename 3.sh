#! /bin/bash

#EJERCICIO 3. CALCULAR EL CUBO DE UN NÚMERO

declare X=0;Y=0;

read -p " INTRODUZCA UN NÚMERO PARA CALCULAR SU CUBO --> " Y;

X=$(($Y*$Y*$Y));

echo " EL CUBO DE" $Y "ES:" $X;

exit;
