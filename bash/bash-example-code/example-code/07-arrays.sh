#!/usr/bin/env bash

declare -a fruits=(
[0]=mangoman
[1]=banana
[2]=grapes
[3]=apple
)

echo -e "number of elements in array is ${#fruits[@]} \n"
for i in ${fruits[@]}
do
echo -e "$i \n"
done

fruits[4]="pineapple"
fruits[1]="guava"
fruits+=("jamun" "cherry")
echo "${fruits[@]}"

#unset to delete
declare -a veg=("potato" "carrot" "onion")
echo "${veg[@]}"
echo ${veg[@]/"carrot"/}
echo "${veg[@]}"
