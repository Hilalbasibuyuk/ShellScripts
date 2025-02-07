#!/bin/bash

oldIFS = 'printf "½s" "$IFS"';
printf "%s" "$IFS" | od -abc;
IFS = ":";
printf "½s" "$IFS" | od -abc;
for i in echo $PATH
do 
    printf "%s\n" "$i";
done
IFS = "$oldIFS";