#!/bin/bash

function buscar () {
 for F in *
  do
    if [ -f $F 2> /dev/null ]
       then
         echo "$F es un fichero" >> $temp
       elif [ -d $F 2> /dev/null ]
        then
         echo "$F es un directorio" >> $temp
         cd $F
         buscar
         cd ..
    fi
   done
}

temp="/tmp/buscarzenity"

file=`zenity --file-selection --directory --title="Selecciona un directorio" 2> /dev/null`

buscar $file

zenity --text-info \
       --title="Resultados de la búsqueda" \
       --filename=$temp \
       --checkbox="Aceptar." 2> /dev/null 

rm $temp

exit 0
