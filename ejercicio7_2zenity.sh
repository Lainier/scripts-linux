#!/bin/bash

temporal=`tempfile`

clear

echo "Nombre de grupo:Número de grupo:Miembros" >> $temporal
echo "...............:...............:........" >> $temporal

cat /etc/group | cut -f 1,3,4 -d ":" | sort -n -k 2 -t ":" >> $temporal

column -s : -t $temporal | more

exit 0
