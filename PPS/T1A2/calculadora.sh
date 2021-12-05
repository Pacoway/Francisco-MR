#Funciones

    #Funcion para sumar
    function Suma() {
        clear
        declare -i resultado=0

        echo "Sumaremos los siguientes numeros introducidos"
        read -p "Introduce el primer numero  " n1
        read -p "Introduce el segundo numero  " n2

        let "resultado=n1+n2"

        echo "El resultado de sumar $n1 + $n2 es: $resultado" 
    }

    #Funcion para restar
    function Resta() {
        clear
        declare -i resultado=0

        echo "Restaremos los siguientes numeros introducidos"
        read -p "Introduce el primer numero  " n1
        read -p "Introduce el segundo numero  " n2

        let "resultado=n1-n2"

        echo "El resultado de restar $n1 - $n2 es: $resultado" 
    }

    #Funcion para multiplicar 
    function Multiplicar() {
        clear
        declare -i resultado=0

        echo "Multiplicaremos los siguientes numeros introducidos"
        read -p "Introduce el primer numero  " n1
        read -p "Introduce el segundo numero  " n2

        let "resultado=n1*n2"

        echo "El resultado de multiplicar $n1 x $n2 es: $resultado" 
    }

    #Funcion para dividir devolviendonos cociente y resto
    function Dividir() {
        clear
        declare -i resultado=0
        declare -i resto=0

        echo "Dividiremos los siguientes numeros introducidos"
        read -p "Introduce el primer numero  " n1
        read -p "Introduce el segundo numero  " n2

        let "resultado=n1/n2"
        let "resto=n1%n2"

        echo "El resultado de dividir $n1 / $n2 es: $resultado con resto $resto" 
    }

#Final de las funciones

declare -i op=0 #opcion

while [ $op -ne 5 ]
    do

#Input del menú
        echo "Introduce la operacion que deseas:"
        echo "1-Sumar"
        echo "2-Restar"
        echo "3-Multiplicar"
        echo "4-Dividir"
        echo "5-Salir"
        read -p " " op

#Menú
        case $op in
            1)
                Suma;;
            2)
                Resta;;
            3)
                Multiplicar;;
            4)
                Dividir;;
            5)
                echo "Salir";;
            *)              
                echo "Valor incorrecto al introducir la opcion " > errorlog8.txt ;;
        esac 

    done