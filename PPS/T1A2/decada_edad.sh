# comprobar si hemos introducido un argumento
if [ $# -eq 1 ]
then

# Comprobar si el valor introducido es un entero
    if [ -n $1 ] && [ $1 -eq $1 ] 2> /dev/null  
    then
        if [ $1 -ge 15 ] && [ $1 -le 60 ]
        then
            declare -i age=`date +%Y` #año actual
            let "age-=$1"
            declare -i decada=0
            let "decada=age%100"
            
            #Compara si es la decada 0
            if [ $decada -lt 10 ]
            then
                echo "naciste en la decada 00"
            else
                let "decada-=decada%10"
            echo "Naciste en la decada de los $decada"
            fi
        else
            echo "El número debe ser entre 15 y 60"
        fi
    else
        echo "No es un valor numérico el parametro introducido"
    fi
else
    echo "No se han introducido ningun parametro"
fi