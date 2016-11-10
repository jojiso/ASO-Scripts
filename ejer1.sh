#!/bin/bash

#1. Recibir un nombre de archivo como parámetro e indicar, imprimiendo todas las leyendas
# que correspondan, si el archivo es legible, modificable y ejecutable por el usuario
#(cur-5, bsc-15, bco-22)

j=`find ~ -type f -name $fichero 2>/dev/null`

echo Caracteristicas de un archivo $1
if [ -f $j ]
then 
echo es legible
fi
if [ -w $j ]
then 
echo es grabable
fi
if [ -x $j ]
then 
echo es ejecutable
fi
