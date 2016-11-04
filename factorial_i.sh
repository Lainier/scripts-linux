#!/bin/bash

valor=1

for i in `seq 1 $1`
 do
  valor=`expr $valor \* $i`
 done 

echo El factorial de $1 es $valor
