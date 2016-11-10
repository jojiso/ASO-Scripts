#!/bin/bash

#3. Recibir un nombre de directorio, validar existencia y condición de directorio y mostrar nombres de todos los directorios y subdirectorios bajo él, en formato de página largo 23.
temp=`tempfile`
function buscar () {
	for i in *
		do
			  if [ -d "$i" ]
				then 
					cd "$i"
					echo "\"$i\" es un directorio" >> $temp
					buscar
					cd ..
			fi
		done
}



if [ -e "$1" ] && [ -d "$1" ]
then 
cd "$1"
buscar 
cat $temp | more -24
else
echo "$1 no es un directorio"
fi
