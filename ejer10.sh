#!/bin/bash

#10. Escribir los siguientes programas:
#a) ligass: muestra los nombres de archivo que son enlaces simbólicos.
#b) ligash: muestra los archivos que tiene enlaces hard.
#Ambos programas reciben un nombre como parámetro, y validarán que corresponda a un directorio del sistema.

directorio=$1

if [ ! -d $1 ]
then 
echo "$1 no es un directorio"
else
echo "Enlaces simbolicos:"
ls -l $directorio | tail -n +2 | sed "s/  */ /g" | grep ^l | cut -d" " -f9
echo "Enlaces duros:"
ls -l $directorio | tail -n +2 | sed "s/  */ /g" | cut -d" " -f 1,2,9 | grep -v ^d | cut -d" " -f2,3 | grep -v ^1 | cut -d" " -f2
fi
