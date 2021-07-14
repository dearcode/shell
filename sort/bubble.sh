#!/bin/bash

src=(1 3 5 4 2 6)


echo ${src[*]}

for (( i=0; i < ${#src[*]}; i++ ))
do
    for (( j=$i; j< ${#src[*]}; j++ ))
    do
        if [[ ${src[$i]} < ${src[$j]} ]]
        then
            x=${src[$i]}
            src[$i]=${src[$j]}
            src[$j]=$x
        fi
    done
done

echo ${src[*]}
