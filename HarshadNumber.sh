if [ $# -eq 1 ]
then 
    if [[ $1 =~ ^[0-9] + $]]
    then 
        number = $1;
        sum_of_digits = 0;

        for digit in $(echo $number | grep -o .)
        do 
            sum_of_digits = $((sum_of_digits + digit));
        done

        if ((number % sum_of_digits == 0));then
            echo "$number is as Harshad Number";
        else
            echo "$number is not a Harshad Number";
        fi 
    else
        echo "The argument must a positive integer";
        exit 1;
    fi
else
    echo "Please provide exactly one positive integer as an argument";
    exit 1;
fi
