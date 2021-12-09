#! /bin/bash

clear;

unset A;
A=$RANDOM;
N=${A:$((${#A}-1)):1};


function colores () {
	case $N in
		1|2)
			echo "Azul"
			;;
		3|4)
			echo "Rojo"
			;;
		5|6)
                        echo "Verde"
                        ;;
		7|8)
                        echo "Gris"
                        ;;
		9|0)
                        echo "Amarillo"
                        ;;
	esac
}

function frutas () {
        case $N in
                1|2)
                        echo "Kiwi"
                        ;;
                3|4)
                        echo "Manzana"
                        ;;
                5|6)
                        echo "Pera"
                        ;;
                7|8)
                        echo "Naranja"
                        ;;
                9|0)
                        echo "Melón"
                        ;;
	esac
}

function herramientas () {
        case $N in
                1|2)
                        echo "Martillo"
                        ;;
                3|4)
                        echo "Destornillador"
                        ;;
                5|6)
                        echo "Alicates"
                        ;;
                7|8)
                        echo "Tenazas"
                        ;;
                9|0)
                        echo "Punzón"
                        ;;
	esac
}

function superheroes () {
        case $N in
                1|2)
                        echo "Superaman"
                        ;;
                3|4)
                        echo "Spiderman"
                        ;;
                5|6)
                        echo "Thor"
                        ;;
                7|8)
                        echo "Hulk"
                        ;;
                9|0)
                        echo "Druida"
                        ;;
	esac
}

PS3="ESCOGE UNA OPCIÓN --> ";

select JUEGO in "Jugar a colores" "Jugar a frutas" "Jugar a herramientas" "Jugar a superhéroes" "Salir"
do
	echo "Se ha escogido $JUEGO";

	case "$REPLY" in
		1)
			echo $A;
			colores;
			unset A
			;;
		2)
                        echo $A;
                        frutas;
			unset A
			;;
		3)
                        echo $A;
                        herramientas;
			unset A
			;;
		4)
                        echo $A;
                        superheroes;
			unset A
			;;
		5)
			echo "Hasta luego...";
			exit
			;;
		*)
			echo "Opción incorrecta"
			;;
	esac
done

exit;
