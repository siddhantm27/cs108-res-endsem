#!/bin/bash

files=()

for file in $(ls dict)
do  
    files+=($file)
done

for file in ${files[@]}
do  
    string="$file"
    n=${#string}
    day=$((10#${string:$((n-12)):2}))
    month=$((10#${string:$((n-10)):2}))
    year=$((10#${string:$[n-8]:4}))
    ext=${string:$[n-3]:3}
    string=${string##$ext}
    if [ $[10#$day] -eq 26 ] && [ $[10#$month] -eq 11 ] && [ $[10#$year] -eq 2008 ]
    then
        mv ./dict/$file ./dict/${string}_today.${ext}
    elif [ $[10#$day] -le 25 ] && [ $[10#$day] -ge 19 ] && [ $[10#$month] -eq 11 ] && [ $[10#$year] -eq 2008 ]
    then
        mv ./dict/$file ./dict/${string}_weekold.${ext}
    elif [[ $day -le 18 && $month -eq 11 && $year -eq 2008 ]] || [[ $month -lt 11 && $year -eq 2008 ]] || [[ $year -lt 2008 ]]
    then
        mv ./dict/$file ./dict/${string}_quiteold.${ext}
    else 
        rm ./dict/$file
    fi
done
mkdir output
mv dict/* output/
# string="${files[1]}"

# echo ${string:6:2}

