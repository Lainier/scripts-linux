#!/bin/bash

temporal=`tempfile`

grupo=`zenity --entry --text "Introduce un nombre de grupo" 2> /dev/null`

info=`cat /etc/group | cut -f1 -d ":" | grep ^$grupo$`

if [ "info" ]
then
 gid=`cat /etc/group | cut -f 1,3 -d ":" | grep $info | cut -f 2 -d ":"`
 echo "GID: $gid" >> $temporal
 echo "Nombres de usuarios principales: `cat /etc/passwd | cut -f 1,5 -d ":" | grep $info | cut -f 2 -d ":"`" >> $temporal
 echo "Nombres de usuarios secundarios: `cat /etc/group | cut -f 1,4 -d ":" | grep ^$info | cut -f 2 -d ":"`" >> $temporal

zenity --text-info \
       --title="Información del grupo $info" \
       --filename=$temporal 2> /dev/null 

else

zenity --entry --text "Grupo no válido" 2> /dev/null
 exit 2
fi

exit 0
