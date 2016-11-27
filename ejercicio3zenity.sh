#!/bin/bash

buscar ()  {
 for D in *
  do
    if [ -d "$D" ]
    then
         echo "Encontrado directorio $D" >> $temp
         cd "$D"
         buscar
         cd ..
    fi
 done
}

temp=`tempfile`

file=`zenity --file-selection --directory --title="Selecciona un directorio" 2> /dev/null`




cd "$file"
buscar

zenity --text-info \
       --title="Información del directorio $file" \
       --filename=$temp 2> /dev/null 

exit 0
