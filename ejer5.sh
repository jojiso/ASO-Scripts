#!/bin/bash

#5. Escribir un programa copiabin.sh que mueva todos los programas del directorio actual (archivos ejecutables) hacia el subdirectorio bin del directorio propio del usuario, muestre los nombres de los que mueve e indique cuántos ha movido o que no ha movido ninguno. Si el directorio bin no existe, deberá ser creado.

#Variables
contador=0
dir=$HOME/bin

#Comprobacion de que existe el directorio $HOME/bin

if [ ! -d $dir ]
then 
mkdir $dir
fi


#Copia de ficheros ejecutables

for i in *
do
if [ -x "$i" ]
then 
cp "$i" $dir
echo "$i copiado a $dir"
contador=`expr $contador + 1`
fi
done
echo "Se copiaron $contador archivos"
