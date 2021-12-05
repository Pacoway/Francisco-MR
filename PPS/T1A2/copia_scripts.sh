# tar -cvf nombre.tar /home/tecmint/carpeta ruta
fecha=`date +%d%m%Y`

#Ruta de la carpeta a copiar
read -p "Introduce la carpeta a copiar: " ruta

if [ -d $ruta ] 2> /dev/null
then
    ruta="$ruta*.sh"
    tar -cvf copia_scripts_$fecha.tar $ruta
else
    echo "La ruta no existe"
fi