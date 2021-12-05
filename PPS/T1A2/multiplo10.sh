read -p "Introduce el numero " n
declare -i resto=0
let "resto=n%10"
if [ $resto -eq 0 ]
    then
    echo "El numero $n es divisible por 10"
else
    echo "No es divisible por 10"
fi