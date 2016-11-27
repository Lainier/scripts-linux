#!/bin/bash

temp=`tempfile`

file=`zenity --entry --text "Introduce tu nombre" 2> /dev/null`

nombre=`cat /etc/passwd | cut -f 1 -d ":" | grep "^$file$"`

hora=`date | sed "s/  */ /g" | cut -f 4 -d " " | cut -f 1 -d ":"`

if [ "$hora" -lt 5  ]
then
  saludo=`echo 'Buenas noches, '$nombre`
elif [ "$hora" -lt 13  ]
then
  saludo=`echo 'Buenos días, '$nombre`
elif [ "$hora" -lt 20  ]
then
  saludo=`echo 'Buenas tardes, '$nombre`
else
  saludo=`echo 'Buenas noches, '$nombre`
fi

zenity --info \
       --text="$saludo" \
       --checkbox="Aceptar." 2> /dev/null 