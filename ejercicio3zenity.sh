#!/bin/bash

function buscar () {
 for D in *
  do
    if [ -d "$D" ]
    then
         echo "Encontrado directorio $D" >> $temporal
         cd "$D"
         buscar
         cd ..
    fi
 done
}

if [ -e "$1" ] && [ -d "$1" ]
then
 temporal=`tempfile`
 cd "$1"
 buscar
 cat $temporal | more
else
echo "Directorio no válido."
fi

exit 0
