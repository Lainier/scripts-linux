#!/bin/bash

equipo=`hostname`
fecha=`date`
temporal=`tempfile`

echo "$equipo - $fecha" >> $temporal
echo "................" >> $temporal

bash ./ejercicio7_1.sh >> $temporal
bash ./ejercicio7_2.sh >> $temporal

zenity --text-info \
       --title="Información de grupos" \
       --filename=$temporal 2> /dev/null 

exit 0
