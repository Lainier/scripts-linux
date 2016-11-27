#!/bin/bash

temporal=`tempfile`

cat /etc/group | cut -f 1,3,4 -d ":" | sort -n -k 2 -t ":" >> $temporal

zenity --list --height="740" --width="800" \
title="Información de grupos" \
column="Nombre de grupo" --column="ID de grupo" --column="Miembros" \
separator=":" \
$temporal

exit 0
