#!/bin/bash

equipo=`hostname`
fecha=`date`
temporal=`tempfile`

clear

echo "$hostname:$fecha" >> $temporal
echo ".........:......" >> $temporal

bash ./ejercicio7_1.sh >> $temporal
bash ./ejercicio7_2.sh >> $temporal

cat $temporal | more

exit 0
