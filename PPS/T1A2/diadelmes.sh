mes=`date +%B` #Mes actual

case $mes in
    "enero"|"marzo"|"mayo"|"julio"|"agosto"|"octubre"|"diciembre")       
        echo "Estamos en $mes, un mes con 31 dias";;

    "abril"|"junio"|"septiembre"|"noviembre")
        echo "Estamos en $mes, un mes con 30 dias";;

    "febrero")
        echo "Estamos en $mes, un mes con 28 dias";;

    *)              
esac 