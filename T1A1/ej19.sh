if test -d $1
then
	echo "El directorio estaba creado"
else
	mkdir "$1"
	echo "El directorio ha sido creado correctamente"
fi


cp "$2" "$1"
echo "El archivo ha sido copiado correctamente"
