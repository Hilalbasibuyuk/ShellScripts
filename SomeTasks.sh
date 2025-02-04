#!/bin/bash

echo "Operation Menu:"
echo "1 - Clear Screen"
echo "2 - Long List Home Directory"
echo "3 - Login As Root"

echo -n "Enter your option (1-3): "
read option

case $option in 
    1)
        clear
        ;;
    2)
        ls -l ~
        ;;
    3)
        echo "Switching to root user. Please enter the root password if prompted."
        su -
        ;;
    *)
        echo "Invalid selection. Please enter a number between 1 and 3."
        ;;
esac
