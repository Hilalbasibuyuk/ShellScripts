#!/bin/bash

if [ $# -eq ]
then  
    input = $1;
    if [[ $input =~ ^[0-9a-fA-F] + $ ]]
    then  
        echo "$input is a valid Hexadecimal number";
    else
        echo "$input is not a valid Hexadecimal number";
    fi    
else
    echo "Please provide exactly one argument to check";
    exit 1;
fi