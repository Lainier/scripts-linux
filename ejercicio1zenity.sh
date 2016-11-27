#!/bin/bash

if [ $# -ne 1 ]
then
echo "Debe introducir un único parámetro"
exit 1
fi

if [ ! -f $1 ]
then
  echo "$1 no es un fichero"
  exit 2
fi

echo "Información del fichero $1"

if [ -r $1 ]
then
 echo "Es legible."
fi

if [ -w $1 ]
then
 echo "Es modificable."
fi

if [ -x $1 ]
then
 echo "Es ejecutable."
fi
