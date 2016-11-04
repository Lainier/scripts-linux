#!/bin/bash

menu () {

opcion=0

while [ $opcion -lt 1 ] || [ $opcion -gt 5 ]
do
	clear
	echo "Menu (selecciona un comando)"
	echo "1) Sumar dos números"
	echo "2) Restar dos números"
	echo "3) Multiplicar dos números"
	echo "4) Dividir dos números"
  echo "5) Salir del programa"
	echo "Introduzca una opcion: "
  read opcion
done
}

operacion () {

if [ $opcion -eq 5 ]
then
 exit 0
fi

echo "Introduzca un número"
read n1
echo "Introduzca otro número"
read n2

case $opcion in
		1) echo "La suma es "; resultado=`expr $n1 + $n2`;;
		2) echo "La resta es "; resultado=`expr $n1 - $n2`;;
		3) echo "La multiplicación es "; resultado=`expr $n1 \* $n2`;;
		4) echo "La división es "; resultado=`expr $n1 / $n2`;;
esac

}

while true
 do
 menu
 operacion
 echo $resultado
 read -p "Pulse cualquier tecla para continuar"
done
