#!/bin/bash

temp=`tempfile`

file=`zenity --file-selection --directory --title="Selecciona un directorio" 2> /dev/null`

echo "Archivos que son enlaces simbólicos:" >> $temp
ls -l "$file" | tail -n +2 | grep "^l" | sed "s/  */ /g" | cut -f 9 -d " " >> $temp

echo "Archivos que son enlaces duros:" >> $temp
ls -l $file | tail -n +2 | grep -v "^d" | sed "s/  */ /g" |  cut -f 2,9 -d " " | grep -v "^1 " | cut -f 2 -d " " >> $temp

zenity --text-info \
       --title="Información de los enlaces del directorio $file" \
       --filename=$temp 2> /dev/null
