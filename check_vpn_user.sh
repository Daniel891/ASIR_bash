#! /bin/bash

#PROGRAMA PARA COMPROBAR SI SE CONECTA ALGUIEN A LA VPN QUE NO SEA YO Y EN ESE CASO AVISARME POR EMAIL

CONECTADO=$(wg show all dump | tr -s "\t" "." | cut -d"." -f4);

if ! [[ $CONECTADO == "(none)" ]]; then
	N=$(wg show all dump | tr -s "\t" "." | cut -d"." -f11);
	N=$(echo $N | tr -s "/" " ");
	for A in $N; do
		if [[ $A -gt 8 ]] && [[ $A -lt 32 ]]; then
			echo "Dirección IP $A conectada" | mail danielromero891@gmail.com;
		fi
	done
fi
