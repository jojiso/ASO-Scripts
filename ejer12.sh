#!/bin/bash
#12. Un script de respaldo produce, entre otros mensajes, líneas del tipo
#"Total bytes written 18804023"
#Guarda su salida en el archivo respaldo.error. Escribir un script total.cinta que sume los bytes grabados e indique el total en bytes, Mb y Gb.
#Crear un archivo respaldo.error de prueba, con un contenido tal como
#Total bytes written 1800
#Total bytes written 1000

#Creamos un contador donde acumular los bytes, que son la 4 columna del .error
TOTAL=0
for TAM in $(cat respaldo.error | cut -d ' ' -f4)
	do
		echo $TAM
		TOTAL=$((TOTAL + TAM))
	done
	#Solo hay que dividir el total para calcular las otras medidas
echo "Total bytes respaldados $TOTAL"
echo "Total MB respaldados `expr $TOTAL / 1000000` MB"
echo "Total GB respaldados `expr $TOTAL / 1000000000` GB"
