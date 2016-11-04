#!/bin/bash

function factorial () {
 if [ $1 -eq 1 ]
  then
    echo 1
  else
    echo `expr $(factorial $(expr $1 - 1)) \* $1`
fi
}

valor=`zenity --entry --text "Introduce un número" 2> /dev/null`

zenity --info --text "El factorial de $valor es `factorial $valor`" 2> /dev/null
