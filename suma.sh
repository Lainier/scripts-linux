#!/bin/bash

echo "El programa terminará cuando la suma de los números sea superior a 100."

suma=0;

while [ $suma -lt 101 ]
do
 echo "Introduzca un número"
 read numero
 suma=`expr $numero + $suma`
done

echo "La suma es" $suma

exit 0
