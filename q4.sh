#!/bin/bash
read input

array=($(echo $input | tr "," "\n"))

for((i=0;i<${#array[@]};i++))
do
    for((j=i;j<${#array[@]};j++))
    do
        if [ ${array[i]} -gt ${array[j]} ]
        then
            x="${array[$j]}"
            array[j]="${array[i]}"
            array[i]="$x"
        fi
    done
done

echo "${array[@]}"
