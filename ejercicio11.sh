#!/bin/bash

nombre=`cat /etc/passwd | cut -f 1 -d ":" | grep "^$1"`

hora=`date | sed "s/  */ /g" | cut -f 4 -d " " | cut -f 1 -d ":"`

if [ "$hora" -lt 5  ]
then
  echo 'Buenas noches, '$nombre
elif [ "$hora" -lt 13  ]
then
  echo 'Buenos dias, '$nombre
elif [ "$hora" -lt 20  ]
then
  echo 'Buenas tardes, '$hora
else
  echo 'Buenas noches, '$hora
fi
