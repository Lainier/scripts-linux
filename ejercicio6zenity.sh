#!/bin/bash

temporal=`tempfile`

echo "Nombre de usuario:Home:Shell" >> $temporal
echo ".................:....:....." >> $temporal

cat /etc/passwd | cut -f 1,6,7 -d ":" | sort >> $temporal

column -s : -t $temporal | more

exit 0
