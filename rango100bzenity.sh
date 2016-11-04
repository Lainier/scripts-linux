#!/bin/bash

VALORES=`zenity --forms --title "Números entre 0 y 100" \
         --text "Introduzca dos números" \
         --separator="," \
         --add-entry "Primer número" \
         --add-entry "Segundo número" 2> /dev/null `

n1=`echo "$VALORES" | cut -f1 -d ,`
n2=`echo "$VALORES" | cut -f2 -d ,`

n1=`echo $n1 | grep ^[0-9][0-9]*$`
n2=`echo $n2 | grep ^[0-9][0-9]*$`

if [ `echo $n1 $n2 | wc -w` -ne 2 ]
then
 zenity --info --text "Debes introducir 2 valores" 2> /dev/null
 exit 1
   elif [ -z "$n1" -o -z "$n2" ]
   then
    zenity --info --text "Debes introducir valores numéricos" 2> /dev/null
    exit 2
      elif [ $n1 -ge 0 ] && [ $n1 -le 100 ] && [ $n2 -ge 0 ] && [ $n2 -le 100 ]
       then
        zenity --info --text "Los números están comprendidos entre 0 y 100" 2> /dev/null
       else
        zenity --info --text "Los números deben estar comprendidos entre 0 y 100" 2> /dev/null
fi
