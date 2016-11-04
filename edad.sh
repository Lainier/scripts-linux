#!/bin/bash

echo "Introduzca la edad del usuario"

read edad;

case $edad in
     [0-9]|1[0-3])       
       echo "Niño";;
     1[4-8])
       echo "Joven";;           
     *)       
       echo "Mayor";;          
esac
