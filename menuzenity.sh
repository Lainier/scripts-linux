#!/bin/bash

menu () {

opcion=0

clear

  opcion=`zenity --list --height="210" --width="350" \
  --title="Menu (selecciona un comando)" \
  --column="Número operacion" --column="Operacion" \
	"1" "Sumar dos números" \
	"2" "Restar dos números" \
	"3" "Multiplicar dos números" \
	"4" "Dividir dos números" \
	"5" "Salir del programa" 2> /dev/null`

}

operacion () {

if [ $opcion -eq 5 ]
then
 exit 0
fi

VALORES=`zenity --forms --title "Operandos" \
         --text "Introduzca dos números" \
         --separator="," \
         --add-entry "Primer número" \
         --add-entry "Segundo número" 2> /dev/null`

n1=`echo "$VALORES" | cut -f1 -d ,`
n2=`echo "$VALORES" | cut -f2 -d ,`

case $opcion in
		1) zenity --info --title "Resultado" --text "La suma es `expr $n1 + $n2`" 2> /dev/null;;
		2) zenity --info --title "Resultado" --text "La resta es `expr $n1 - $n2`" 2> /dev/null;;
		3) zenity --info --title "Resultado" --text "La multiplicación es `expr $n1 \* $n2`" 2> /dev/null;;
		4) zenity --info --title "Resultado" --text "La división es `expr $n1 / $n2`" 2> /dev/null;;
esac

}

while true
 do
 menu
 operacion
done
