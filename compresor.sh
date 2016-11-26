#!/bin/bash

function comprimir(){
    echo "Los ficheros son $files"
    tar czvf $destino $files
}

function descomprimir(){
    tar xvfz $files -C $destino

}

menu () {

opcion=0

while [ $opcion -lt 1 ] || [ $opcion -gt 5 ]
do
	clear
	echo "Compresor/descompresor de ficheros"
	echo "1) Comprimir"
	echo "2) Descomprimir"
	echo "3) Salir"
	echo "Introduzca una opción: "
  read opcion
  case $opcion in
		1) echo 'Introduce los nombres de ficheros, separados por espacios:'
       read files
       echo 'Introduce la ruta completa al fichero tgz destino, extensión incluida:'
       read destino
       comprimir
       ;;
		2) echo 'Introduce el nombre de un fichero tgz, extensión incluida:'
       read files
       echo 'Introduce la ruta al directorio donde quieras decomprimir el fichero'
       read destino
       descomprimir
       ;;
		3) exit;;
   esac
done
}

while true
 do
 menu
 read -p "Pulse cualquier tecla para continuar"
done

exit 0
