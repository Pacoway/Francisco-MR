op=""
#Funcion que muestra la informacioón del usuario
function InfoUser() {
    read -p "Introduce el usuario a buscar " user

    if id "$user" &> /dev/null

    then
        echo "Usuario: $user"
        echo "UID: `getent passwd $user | cut -d: -f3`"
        echo "GID: `getent passwd $user | cut -d: -f4`"
        echo "Home: `getent passwd $user | cut -d: -f6`"
    else
        echo "El usuario $user no existe"
        echo "El usuario $user no existe" > ./errorlog9.txt;
    fi
}

InfoUser #Accion inicial

#Bucle para determinar si continuamos buscando mas usuarios
while [ op != "n" ]
    do
        read -p "¿Quiere buscar otro usuario? (s/n) " op
        case $op in
            "s"|"S")
                InfoUser;;
            "n"|"N")
                echo "Saliendo del sistema"; exit;;
            *)
                echo "Accion erronea";;
        esac
    done