if [ $# == 0 ]
 then
 echo "No has introducido ningun parametro"
else
 echo "Se han recibido $# parametros"
 echo "Los parametros recibidos son: $@"
fi
