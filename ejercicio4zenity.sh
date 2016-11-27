#!/bin/bash

temp=`tempfile`

file=`zenity --file-selection --title="Selecciona un fichero para darle permiso ug+x" 2> /dev/null`

if [ -f "$file" ]
then
 chmod ug+x "$file"
 ls -la "$file" > $temp

 zenity --text-info \
       --title="Permisos del fichero $file" \
       --filename=$temp 2> /dev/null

else
echo "Fichero no válido."
fi

exit 0
