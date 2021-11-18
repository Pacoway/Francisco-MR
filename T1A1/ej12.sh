if test -d $1
then
	echo "El directorio estaba creado"
else
	mkdir "$1"
fi

cp "$2" "$1"
