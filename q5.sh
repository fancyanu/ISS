#!/bin/bash
read input
length=${#input}

#a
for((i=$length-1;i>=0;i--))
do
reverse=$reverse${input:$i:1}
done
echo "$reverse"

#b
echo "$reverse" | tr a-z b-za | tr A-Z B-ZA

#c
for((i=$length/2-1;i>=0;i--))
do
rev=$rev${input:$i:1}
done
for((i=$length/2;i<$length;i++))
do
forward=$forward${input:$i:1}
done
echo "$rev$forward"