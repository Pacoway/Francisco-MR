#! /bin/bash

IFS='-'

if [ $# == 0 ]
 then
 echo "Debe recibir al menos un parametro"
else
 echo "Parametros introducidos $*"
fi
