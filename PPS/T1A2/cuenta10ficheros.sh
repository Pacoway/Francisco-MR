# comprobar si hemos introducido un argumento
if [ $# -eq 1 ]
then

#Comprueba si el argumento es un directorio
    if [ -d $1 ]
    then

#Comprueba la cantidad de archivos que tiene el directorio
        if [ `ls -l $1 | grep -c ^-` -ge 10 ]
        then
            echo "Hay mas de 10 ficheros"
        else
            echo "No hay mas de 10 ficheros"
        fi    
    else
        echo "No es un directorio el parametro introducido"
    fi
else
    echo "No se ha pasado ningun parametro"
fi