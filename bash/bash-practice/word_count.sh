#!/bin/bash

declare -A count
declare -a words

while read line; do
    for word in $line
    do
        let count[$word]+=1
    done
done < $1

for word in ${!count[@]}
do
    echo "${word} : ${count[$word]}"
done