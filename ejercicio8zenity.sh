#!/bin/bash

temporal=`tempfile`

usuario=`zenity --entry --text "Introduce un nombre de usuario" 2> /dev/null`

info=`id $usuario 2> /dev/null`

if [ "$info" ]
then
 echo "$info" | cut -f1 -d " " >> $temporal
 echo "Info de grupo primario:" >> $temporal
 echo "$info" | cut -f2 -d " " >> $temporal
 if [ `echo "$info" | tr " " "\n" | wc -l` -gt 2 ]
   then
   grupos=`echo "$info" | cut -f3 -d" "`
   echo "Info de grupos secundarios: $grupos" >> $temporal
 fi

zenity --text-info \
       --title="Información del usuario $usuario" \
       --filename=$temporal 2> /dev/null 

else

zenity --entry --text "Usuario no válido" 2> /dev/null

fi

exit 0
