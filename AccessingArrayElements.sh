#!/bin/bash
fileContent = (`cat LogFile.txt`);

for i in ${fileContent[@]}
do 
    echo "$i, ${#i}";
done