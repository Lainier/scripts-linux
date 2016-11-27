#!/bin/bash

if [ $# -ne 1 ]
then
echo "Debe introducir un único parámetro"
exit 1
fi

if [ ! -d $1 ]
then
  echo "$1 no es un directorio"
  exit 2
fi

echo "Archivos que son enlaces simbólicos:"
ls -l $1 | tail -n +2 | grep "^l" | sed "s/  */ /g" | cut -f 9 -d " "

echo "Archivos que son enlaces duros:"
ls -l $1 | tail -n +2 | grep -v "^d" | sed "s/  */ /g" |  cut -f 2,9 -d " " | grep -v "^1 " | cut -f 2 -d " "
