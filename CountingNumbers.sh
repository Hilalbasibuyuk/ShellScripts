#!/bin/bash
counter = 1;
while (( $counter -le 10 ))
do 
    echo $counter;
    ((counter=counter + 1));
done



#For ile yazımı

for((i=1; 1=<10;i++))
do 
    echo $i;
done