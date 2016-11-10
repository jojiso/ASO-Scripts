#!/bin/bash

#11. Escribir un programa saludo que, según la hora, escriba el saludo correspondiente al nombre de pila del usuario. En el archivo /etc/passwd los usuarios deben estar ingresados con nombre y apellido separados por blanco. Los saludos corresponden a las siguientes horas: Buenos días, de 05:00 hasta 12:59; Buenas tardes, de 13:00 hasta 19:59; Buenas noches 20:00 hasta 04:59. Ejemplo de mensaje: Buenos días, Juan.
#A efectos de pruebas, se recibirán la hora y el nombre de login como parámetros, dejando comentados los comandos donde se extrae la hora real y se toma el usuario real.

#$usuario=`cat /etc/passwd | cut -d":" -f1 | grep ^$1$`

#$hora=`date | sed "s/  */:/g" | cut -d":" -f4`

if [ $2 -lt 5 ]
then 
echo "Buenas noches, $1"
elif [ $2 -lt 13 ] 
then 
echo "Buenos dias, $1"
elif [ $2 -lt 20 ]
then
echo "Buenas tardes, $1"
else 
echo "Buenas noches, $1"
fi
