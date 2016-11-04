#!/bin/bash

rm -f ejercicio2.txt 2> /dev/null

while [ $# != 0 ]
do

ruta=`find . -type f -name $1 2> /dev/null`

if [ $ruta ]
then
echo "El fichero $1 se encuentra en" $ruta >> ejercicio2.txt
else
echo "Fichero $1 no encontrado" >> ejercicio2.txt
fi
shift

done

more -d ejercicio2.txt

rm -f ejercicio2.txt 2> /dev/null

exit 0
