#!/bin/bash

numero=`zenity --entry --text "Introduce un número" 2> /dev/null`

valor=1

for i in `seq 1 $numero`
 do
  valor=`expr $valor \* $i`
 done 

zenity --info --text "El factorial del número $numero es $valor" 2> /dev/null
