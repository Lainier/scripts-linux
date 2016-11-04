#!/bin/bash

edad=`zenity --entry --text "Introduce la edad del usuario" 2> /dev/null`

case $edad in
     [0-9]|1[0-3])       
       zenity --info --text "Niño" 2> /dev/null;;
     1[4-8])
       zenity --info --text "Joven" 2> /dev/null;;   
     *)       
       zenity --info --text "Mayor" 2> /dev/null;;       
esac
