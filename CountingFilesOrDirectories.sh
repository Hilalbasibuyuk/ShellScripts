#!/bin/bash

if [ $# -eq 1]
then 
    if test -d $1
    then
        fileCounter = 0;
        folderCounter = 0;

        for i in `ls $1`
        do 
            if [ -f $1/$i ]
            then 
                echo "$1/$i is a file";
                ((fileCounter++));
            elif [ -d $1/$i ]
            then    
                echo "$1/$i is a folder";
                ((folderCounter++));
            fi
        done 
        echo "I processed $fileCounter files";
        echo "I processed $folderCounter folders in total";
    else
        echo "The command line argument is not a directory";
    fi 
else
    echo "The number of command line arguments must be 1!";
fi
