#!/bin/bash

temporal=`tempfile`

echo "Nombre de grupo:Número de grupo:Miembros" >> $temporal
echo "...............:...............:........" >> $temporal

cat /etc/group | cut -f 1,3,4 -d ":" | sort >> $temporal

column -s : -t $temporal | more

exit 0
