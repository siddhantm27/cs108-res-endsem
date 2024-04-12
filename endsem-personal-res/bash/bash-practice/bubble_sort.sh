#!/bin/bash

numbers=()
declare -i swaps=0

for num in $@
do
    numbers+=($num)
done

n=${#numbers[@]}

for ((i=0; i<$[$n-1]; i++))
do
    for ((j=0; j<$[$n-$i-1]; j++))
    do 
        if [[ ${numbers[j]} -gt ${numbers[j+1]} ]]
        then
            # echo $j first ${numbers[j]} second ${numbers[j+1]}
            temp=${numbers[j]}
            numbers[j]=${numbers[j+1]}
            numbers[j+1]=$temp
            swaps=$[$swaps+1]
            echo ${numbers[@]}
        fi
    done
done

echo ${numbers[@]}
echo $swaps
