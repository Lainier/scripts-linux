#!/bin/bash

function comprimir(){
    tar czvf $destino$fichero $files
}

function descomprimir(){
    tar xvfz $fichero -C $destino

}

menu () {

opcion=0

while [ $opcion -lt 1 ] || [ $opcion -gt 3 ]
do

    opcion=`zenity --list --height="210" --width="350" \
  --title="Compresor/descompresor de ficheros" \
  --column="Número operacion" --column="Operacion" \
	"1" "Comprimir" \
	"2" "Descomprimir" \
	"3" "Salir del programa" 2> /dev/null`

  case $opcion in
	1) files=`zenity --file-selection --multiple --separator=" " --title="Selecciona ficheros a comprimir" 2> /dev/null`
           destino=`zenity --file-selection --directory --title="Selecciona directorio de destino" 2> /dev/null`
           fichero=`zenity --entry --text "Introduce el nombre del fichero comprimido, extensión incluida" 2> /dev/null`
           comprimir
           ;;
       2) fichero=`zenity --file-selection --title="Selecciona fichero a descomprimir" 2> /dev/null`
          destino=`zenity --file-selection --directory --title="Selecciona directorio de destino" 2> /dev/null`
          descomprimir
          ;;
       3) exit;;
   esac
done
}

while true
 do
 menu
done

exit 0
