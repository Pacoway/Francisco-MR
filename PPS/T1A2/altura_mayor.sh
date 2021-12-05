read -p "Introduce la altura " a1
read -p "Introduce la altura " a2
read -p "Introduce la altura " a3
declare -i n=0
if [ $a1 -gt $a2 ] && [ $a1 -gt $a3 ]
    then
    let "n=a1"
elif [ $a2 -gt $a1 ] && [ $a2 -gt $a3 ]
    then
    let "n=a2"
else
    let "n=a3"
fi

let "m=n/100"
let "cm=n%100"

echo "La mayor altura es: $m,$cm""m"