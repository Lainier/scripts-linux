#!/bin/bash

VALORES=`zenity --forms --title "Números entre 0 y 100" \
         --text "Introduzca dos números" \
         --separator="," \
         --add-entry "Primer número" \
         --add-entry "Segundo número" 2> /dev/null `

n1=`echo "$VALORES" | cut -f1 -d ,`
n2=`echo "$VALORES" | cut -f2 -d ,`

if [ `echo $n1 $n2 | wc -w` -ne 2 ]
then
  zenity --info --text "Debes introducir 2 valores" 2> /dev/null
else
  zenity --info --text "El número de argumentos es 2" 2> /dev/null
    if [ $n1 -ge 0 ] && [ $n1 -le 100 ]
     then
       zenity --info --text "El primer número está en el rango" 2> /dev/null
     else
      zenity --info --text "El primer número está fuera de rango" 2> /dev/null
    fi
    if [ $n2 -ge 0 ] && [ $n2 -le 100 ]
    then
      zenity --info --text "El segundo número está en el rango" 2> /dev/null
    else
      zenity --info --text "El segundo número está fuera de rango" 2> /dev/null
    fi
fi
