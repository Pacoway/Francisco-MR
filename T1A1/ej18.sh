if [ $# -eq 0 ]
 then
 echo "No se ha introducido ningun parametro"
elif [ -d $1 ]
 then
 echo "La ruta contiene un directorio"
elif [ -f $1 ]
 then
 echo "La ruta contiene un archivo"
else
 echo "No existe el directorio o archivo"
fi
