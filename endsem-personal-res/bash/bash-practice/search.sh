#!/bin/bash

for i in ${*:2}
do
    if [ $1 -eq $i ];
    then
        echo "YES"
        exit 0
    fi
done

echo "NO"
