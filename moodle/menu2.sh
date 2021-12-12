#! /bin/bash

clear;

function crear () {
	declare Y='';
	
	read -p "Introduzca el nombre para el subdirectorio nuevo --> " Y;

	mkdir ./"$Y";
	echo "Subdirectorio" $Y "creado";
};

function borrar () {
	declare X='';

	read -p "Introduzca el nombre del directorio que quiere borrar. AVISO: Todo lo que contenga en su interior se borrará también --> " X;

	rm -fr ./"$X";
	echo "Se ha borrado el subdirectorio" $X "junto con todo su contenido";
};

PS3="Escoge una opción --> ";

select intem in "Mostrar path absoluto de donde estas" "Listar contenido del directorio actual" "Crear un subdirectorio" "Borrar un directorio y su contenido" "Salir"
do
	case $REPLY in
		1)
			pwd
			;;
		2)
			ls -l ./
			;;
		3)
			crear
			;;
		4)
			borrar
			;;
		5)
			echo "Saliendo...";
			exit
			;;
		*)
			echo "Opción no válida";
			exit
			;;
	esac
done

exit;
