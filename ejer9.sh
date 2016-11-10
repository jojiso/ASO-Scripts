#!/bin/bash

#9. Escribir un programa grupusu que dado un nombre de grupo determine si existe en el sistema, y si es así, presente su nombre, número de grupo (GID), y lista de usuarios que pertenezcan a él, ya sea como grupo primario (en /etc/passwd) o como grupo secundario (lista en /etc/group).

grupo="$1"
existe=`cat /etc/group | cut -d":" -f1 | grep ^$grupo$`

#comprobacion parametros correctos
if [ $# -ne 1 ]
then
echo "Numero de parametros inconrrecto"
fi

if [ ! $existe ]
then 
echo "El grupo $grupo no existe"
else
echo "Nombre de grupo: `cat /etc/group | cut -d":" -f1 | grep $existe`"
echo "Grupo de usuario GID: `cat /etc/group | cut -d: -f1,3 | grep $existe | cut -d: -f2`"
echo "Usuarios grupo primario: `cat /etc/passwd | cut -d: -f1,5 | grep $existe | cut -d: -f2`"
echo "Usuarios grupos secundarios del usuario: `cat /etc/group | cut -d: -f1,4 | grep ^$existe | cut -d: -f2`"
fi

