#!/bin/bash

#6. Usando el archivo /etc/passwd escribir el programa usuarios que lista los nombres de login, el directorio propio del usuario y el intérprete invocado por defecto de todos los usuarios, ordenados alfabéticamente por nombre de login. Con leyendas explicativas adecuadas para cada columna. "comando column -t" 1.6.7
archivo=`tempfile`

echo "Usuario:Directorio:Interprete" >> $archivo
echo "-------:----------:----------" >> $archivo
cat /etc/passwd | cut -d":" -f 1,6,7 | sort -n >> $archivo

cat $archivo | column -t -s":"| more -20

#Version con sed

#echo "Usuario Directorio Interprete" >> $archivo
#echo "------- ---------- ----------" >> $archivo
#cat /etc/passwd | cut -d":" -f 1,6,7 | sed "s/:/ /g" | sort -n >> $archivo

#cat $archivo | column -t | more -20

