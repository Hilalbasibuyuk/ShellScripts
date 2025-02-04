#!/bin/bash
echo -n "Please enter a number: ";
read number;

if [ $number -lt 10 ]
then 
    echo "The number is less than 10";
elif test $number -eq 10
then 
    echo "The number is equal to 10";
else
    echo "The number is greater than 10";
fi 
