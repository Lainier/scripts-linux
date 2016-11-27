#!/bin/bash

temporal=`tempfile`
info=`id $1 2> /dev/null`

if [ $# -ne 1 ]
then
echo "Debe introducir un único parámetro"
exit 1
fi

if [ "$info" ]
then
 echo "Info de usuario:"
 echo "$info" | cut -f1 -d " "
 echo "Info de grupo primario:"
 echo "$info" | cut -f2 -d " "
 if [ `echo "$info" | tr " " "\n" | wc -l` -gt 2 ]
   then
   grupos=`echo "$info" | cut -f3 -d" "`
   echo "Info de grupos secundarios: $grupos"
 fi
else
 echo "El usuario no existe"
fi

exit 0
