#!/bin/bash

if [ -f "$1" ]
then
 chmod ug+x "$1"
 ls -la "$1"
else
echo "Fichero no válido."
fi

exit 0
