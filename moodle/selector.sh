#! /bin/bash

clear;

function aleatorio () {
	unset A;
	A=$RANDOM;
	N=${A:$((${#A}-1)):1};
}

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
                        echo "Superman"
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
			aleatorio;
			echo $A;
			colores
			;;
		2)
			aleatorio;
                        echo $A;
                        frutas
			;;
		3)
			aleatorio;
                        echo $A;
                        herramientas
			;;
		4)
			aleatorio;
                        echo $A;
                        superheroes
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
