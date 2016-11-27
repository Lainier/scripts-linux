#!/bin/bash

temporal=`tempfile`
temporal2=`tempfile`

echo "Nombre de usuario:Home:Shell" >> $temporal
echo ".................:....:....." >> $temporal

cat /etc/passwd | cut -f 1,6,7 -d ":" | sort >> $temporal

column -s : -t $temporal >> $temporal2

zenity --text-info \
--title="Información de usuarios" \
--filename="$temporal2" 2> /dev/null

exit 0
