#!/bin/bash

temp=`tempfile`

file=`zenity --entry --text "Introduce un nombre de fichero" 2> /dev/null`

if [ -f $file ]
then

if [ -r $file ]
then
  echo "Es legible." >> $temp
fi

if [ -w $file ]
then
 echo "Es modificable." >> $temp
fi

if [ -x $file ]
then
 echo "Es ejecutable." >> $temp
fi

zenity --text-info \
       --title="Información del fichero $file" \
       --filename=$temp 2> /dev/null 

else

zenity --entry --text "Fichero no válido" 2> /dev/null

fi

