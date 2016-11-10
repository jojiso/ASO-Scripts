#!/bin/bash

#7. Usando solamente el archivo /etc/group, escribir los siguientes programas: 
#a) 'grupo1': listar los nombres y números de grupo y la lista de usuarios de cada uno, ordenados por nombre. Con leyendas explicativas adecuadas para cada columna. Estableciendo una pausa al terminar. Limpiando la pantalla al iniciar.
#b) 'grupo2': igual, ordenados por número de grupo. Con leyendas explicativas adecuadas para cada columna. Estableciendo una pausa al terminar.
#c) 'grupo3': reúne las dos salidas anteriores, así como nombre de la máquina y fecha del día.
#crear archivo temporales para meter la info del /etc/group
grupo1=`tempfile`
grupo2=`tempfile`
grupo3=`tempfile`
#menu para seleccionar la opcion
menu(){
	clear
	echo "Menu (selecciona un comando)"
	echo "1-Grupo1"
	echo "2-Grupo2"
	echo "3-Grupo3"
	echo "4-Salida"
	echo "Introduzca una opcion (1-4): "
  read opcion
	return $opcion
	}
#opciones de los programas
grupo(){
	case $1 in
		1) clear | cat $grupo1 | column -t | more -20;;
		2) clear | cat $grupo2 | column -t | more -20;;
		3) clear | cat $grupo3 | column -t | more -20;;
		*) exit;;
	esac
}
#grupo1
echo "Nombre Grupo Usuarios" >> $grupo1
echo "------ ----- --------" >> $grupo1
cat /etc/group | cut -d":" -f 1,3,4 | sed "s/:/ /g" | sort -n >> $grupo1
#grupo2
echo "Nombre Grupo Usuarios" >> $grupo2
echo "------ ----- --------" >> $grupo2
cat /etc/group | cut -d":" -f 1,3,4 | sed "s/:/ /g" | sort -n -k2 >> $grupo2
#grupo3
echo "Nombre Grupo Usuarios" >> $grupo3
echo "------ ----- --------" >> $grupo3
cat /etc/group | cut -d":" -f 1,3,4 | sed "s/:/ /g" | sort -n -k2 >> $grupo3
echo Máquina: `hostname` >> $grupo3
echo Fecha: `date` >> $grupo3
#ejecucion del programa
while true
do
menu 
grupo $?
read -p "¿Quieres continuar?" continuar
done


