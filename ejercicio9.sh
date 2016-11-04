#!/bin/bash

if [ $# -ne 1 ]
then
echo "Debe introducir un único parámetro"
exit 1
fi

grupo=`cat /etc/group | cut -f1 -d ":" | grep ^$1$`

if [ "grupo" ]
then
 echo "Nombre de grupo: $grupo"
 gid=`cat /etc/group | cut -f 1,3 -d ":" | grep $grupo | cut -f 2 -d ":"`
 echo "GID: $gid"
 echo "Nombres de usuarios principales: `cat /etc/passwd | cut -f 1,5 -d ":" | grep $grupo | cut -f 2 -d ":"`"
 echo "Nombres de usuarios secundarios: `cat /etc/group | cut -f 1,4 -d ":" | grep ^$grupo | cut -f 2 -d ":"`"
else
 echo "El grupo no existe"
 exit 2
fi

exit 0
