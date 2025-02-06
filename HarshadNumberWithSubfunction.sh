#!/bin/bash
is_harshad() {
    local number = $1;
    local sum_of_digits = 0;

    for digit in $(echo $number | grep -o .);do
        sum_of_digits = $((sum_of_digits + digit));
    done  

    if (( number % sum_of_digits == 0));then  
        return 0;
    else
        return 1;
    fi     
}

if [[ $# -ne 2 || ! $1 =~ ^[0-9] + $ || ! $2 =~ ^[0-9] + $]];
    echo "Both arguments must be positive integers";
    exit 1;
fi

lower_limit = $1;
upper_limit = $2;

if ((lower_limit > upper_limit));then
    echo "Error: Lower limit must be less than or equal to the upper mit";
    exit 1;
fi

echo "Harshad numbers between lower limit and upper limit";
for ((num = lower_limit ; num <= upper_limit;num++));do    
    if is_harshad $num;then  
        echo $num
    fi
done