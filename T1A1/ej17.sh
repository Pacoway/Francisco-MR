if [ $# -eq 0 ]
 then
 echo "No se ha introducido ningun parametro"
elif [ -d $1 ] || [ -f $1 ]
 then
 echo "Existe el directorio o archivo seleccionado"
else
 echo "No existe el directorio o archivo"
fi
