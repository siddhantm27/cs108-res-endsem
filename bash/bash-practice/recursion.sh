#!/bin/bash

catalan() {

    local n=$1
    if [ $n -eq 0 ]; then 
        echo 1                  
    elif [ $n -eq 1 ]; then
        echo 1                
    else
        sum=0
        for((i=0;i<$n;i++))
        do
            local s1=$(catalan $i)
            local s2=$(catalan $((n-i-1)))
            let sum+=$((s1*s2))
        done
        echo $sum
    fi
}

result=$(catalan $1)
echo $result