#!/bin/bash

temp=`tempfile`

while true

do

file=`zenity --entry --text "Introduce un nombre de fichero" 2> /dev/null`

ruta=`find . -type f -name $file 2> /dev/null`

if [ $ruta ]
then
echo "El fichero $file se encuentra en" $ruta >> $temp
else
echo "Fichero $file no encontrado" >> $temp
fi

done

zenity --text-info \
       --title="Información de los ficheros" \
       --filename=$temp 2> /dev/null 
