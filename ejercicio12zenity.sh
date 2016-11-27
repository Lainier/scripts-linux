#!/bin/bash

temp=`tempfile`

lista=`cat respaldo.error | cut -f 4 -d " "`

suma=0

for i in $lista
do
suma=`expr $suma + $i`
done

megas=`expr $suma \/ 1024`
gigas=`expr $megas \/ 1024`

echo "Tamaño total: $suma bytes. $megas MB. $gigas GB." >> $temp

zenity --text-info \
       --title="Suma de tamaños" \
       --filename=$temp 2> /dev/null
