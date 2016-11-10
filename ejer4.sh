#!/bin/bash

#4. Escribir un programa seaejec que reciba un nombre de archivo, verifique que existe y que es un archivo común, lo convierta en ejecutable para el dueño y el grupo y muestre el modo final.

if [ -f "$1" ] && [ -e "$1" ]
then
chmod ug+x "$1"
ls -l "$1"
else 
echo "El archivo $1 no existe"
fi
