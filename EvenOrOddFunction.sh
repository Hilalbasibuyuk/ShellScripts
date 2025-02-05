#!/bin/bash

IsEven()
{
    number = $1;
    if (( number % 2 == 0))
    then
        return 0;
    else
        return 1;
    fi
}

IsEven 4;
if [$? -eq 0]
then 
    echo "The number is even";
else
    echo "The number is odd";
fi