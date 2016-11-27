#!/bin/bash

dir="$HOME/bin"
suma=0

if [ ! -d $dir ]
then
mkdir $dir
fi

for i in *
do

 if [ -x "$i" ] && [ -f "$i" ]
 then
 cp "$i" $dir
 suma=`expr $suma + 1`
 echo "Copiado fichero ejecutable $i"
 fi

done

echo "El número de ficheros ejecutables copiados es $suma."

exit 0
