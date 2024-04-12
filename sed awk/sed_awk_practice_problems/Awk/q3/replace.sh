#!/bin/bash

paragraph=$(cat ./$2)

awk -v para="$paragraph" 'BEGIN{FS=":"}{   
        name=$1;
        roll=$2;
        system("sed 's/student_name/$name/g' -e 's/roll_no/$roll/g' para')
        system(echo "\n">> output.txt);
        }' $1
