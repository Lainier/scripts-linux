#!/bin/bash

if [ $# != 2 ]
then
 echo "El número de parámetros debe ser dos."
 exit 1
fi

valida1=`echo $1 | grep ^[0-9][0-9]*$`
valida2=`echo $2 | grep ^[0-9][0-9]*$`

if [ -z "$valida1" -o -z "$valida2" ]
then
 echo "Los valores deben ser numéricos"
 exit 2
fi

if [ $1 -ge 0 ] && [ $1 -le 100 ]
then
 echo "El valor está comprendido entre 0 y 100"
else
 echo "El valor no está comprendido entre 0 y 100"
fi

if [ $2 -ge 0 ] && [ $2 -le 100 ]
then
 echo "El valor está comprendido entre 0 y 100"
else
 echo "El valor no está comprendido entre 0 y 100"
fi
