# comprobar si hemos introducido un argumento
if [ $# -eq 1 ]
then

# Comprobar si el valor introducido es un entero
    if [ -n $1 ] && [ $1 -eq $1 ] 2> /dev/null  
    then
    declare -i n=0 
    let "n=$1%12"
        case $n in
        0)
            echo "Es el año del MONO";;
        1)
            echo "Es el año del GALLO";;
        2)
            echo "Es el año del PERRO";;
        3)
            echo "Es el año del CERDO";;
        4)
            echo "Es el año de la RATA";;
        5)
            echo "Es el año del BUEY";;
        6)
            echo "Es el año del TIGRE";;
        7)
            echo "Es el año del CONEJO";;
        8)
            echo "Es el año del DRAGON";;
        9)
            echo "Es el año de la SERPIENTE";;
        10)
            echo "Es el año del CABALLO";;
        11)
            echo "Es el año de la CABRA";;
        *)
        esac
    else
        echo "No es un valor numérico el parametro introducido"
    fi
else
    echo "No se han introducido ningun parametro"
fi