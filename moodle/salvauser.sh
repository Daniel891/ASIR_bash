#! /bin/bash -x

clear;

USUARIOS=$(cat /etc/passwd | awk -F ":" '{print $1}');
CARPETAS=$(cat /etc/passwd | awk -F ":" '{print $6}');
FECHA=$(date +%F-%H-%M);


for ITEM
do
	if [ $ITEM == $($USUARIOS | grep $ITEM) ]; 
	then
		tar cvf - $($CARPETAS | grep $ITEM) | gzip > /var/tmp/$FECHA-$ITEM;
		echo "bien";
	else echo "fallo";
	fi
done

exit;
