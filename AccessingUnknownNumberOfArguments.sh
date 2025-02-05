#!/bin/bash

for arg in "$@"
do 
    echo "$arg";
done


#While ile yazımı

i=0;
j = $#;
while test $i -le $j 
do 
    echo "$i";
    i = $((i+1));
    shift i;
done


# For ile yazımı
for ((i = 1; i<= $#;i++))
do
    echo "${!i}";
done





