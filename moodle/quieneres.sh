#! /bin/bash

if  [ $USER == "root" ];then
	echo "Eres el administrador y tienes todos los privilegios";
else
	echo "Eres un usuario cualquiera y no tienes privilegios de administración";
fi

exit;
