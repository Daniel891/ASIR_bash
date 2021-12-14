#! /bin/bash

clear;

for A in $(cat datos.txt | tr -d " " | awk -F"|" '{print $3}');
do
	case $A in
		"Valencia")
			((V++))
			;;
		"LaRioja")
			((R++));
			;;
		"León")
                        ((L++));
			;;
	esac
done

echo "Valencia => " $V;
echo "La Rioja => " $R;
echo "León => " $L;
