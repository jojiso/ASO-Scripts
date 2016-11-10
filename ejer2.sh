#!/bin/bash

#2. Recibir varios nombres de archivo como parámetros, y para cada uno validar si el nombre
#corresponde a un archivo común existente, y si es así mostrarlo en pantalla paginando.
temp=`tempfile`

for fichero in $*
do 
j=`find ~ -type f -name $fichero 2>/dev/null`
if [ -e "$j" ]
then 
echo "$j existe" >> $temp
else
echo "El archivo $fichero no existe" >> $temp
fi
done

more -d $temp
