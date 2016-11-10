#!/bin/bash

#8. Escribir un programa usugrup que dado un nombre de login de usuario determine si existe en el sistema, y si es así, presente su nombre de usuario, , número de usuario (UID), grupo primario y grupos secundarios si los tiene, con leyendas adecuadas. `id $USER`

lineas=`id $usuario | tr " " "\n" | wc -l`
usuario=$1
#Comprobar que existe el usuario
id $usuario >/dev/null 2>/dev/null
error=$?
#comprobacion parametros correctos
if [ $# -ne 1 ]
then
echo "Numero de parametros inconrrecto"
fi

if [ $error -ne 0 ]
then 
echo "El usuario $usuario no existe"
else
echo "Nombre de usuario y UID: `id $usuario | cut -d" " -f1`"
echo "Grupo de usuario GID: `id $usuario | cut -d" " -f2`"
echo "Grupos seecundarios del usuario: `id $usuario | cut -d" " -f3-$lineas`"
fi

