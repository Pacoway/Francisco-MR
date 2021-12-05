read -p "Introduce el primer numero " n1
read -p "Introduce el segundo numero " n2

#Ordenar en caso de que n1 sea mayor que n2
if [ $n1 -gt $n2 ]
then
    let "temp=n1"
    let "n1=n2"
    let "n2=temp"
fi

#Bucle con seq
text=""
declare -i sum=$n2 #8
let "temp=n2-1" #7
for i in `seq $n1 $temp`
    do
        text=$text$i+;
        let "sum+=i"
    done
text=$text$n2

echo "$sum es el resultado de la suma de $text"
#Bucle como C
text=""
sum=$n2

for ((i=$n1; i<$n2; i++)); 
    do 
        text=$text$i+;
        let "sum+=i"
    done
text=$text$n2

echo "$sum es el resultado de la suma de $text"