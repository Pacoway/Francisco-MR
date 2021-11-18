if [ $# -eq 0 ]
 then
 echo "No has introducido ningun parametro"
 exit 1
else
 echo "Se han recibido $# parametros"
 echo "Los parametros recibidos son: $@"
 exit 0
fi
