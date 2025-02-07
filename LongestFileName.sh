#!/bin/bash

# When the file extension is included in the name

max = 0;
if [ -d $1 ]
then   
    oldIFS = $IFS;
    IFS = $'\n';
    for i in `ls $1`
    do   
        if [ -f $i ]
        then  
            noktali_ters_dosya_ismi = `echo "$i" | rev`;
            noktasiz_ters_dosya_ismi = `echo "$noktali_ters_dosya_ismi" | cut -d '.' -f 2-`;

            max_yeni = `expr length $noktasiz_ters_dosya_ismi`;
            if [ $max_yeni -gt $max]
            then  
                noktali_uzun = $i;
                let max = max_yeni;
            fi
        fi
    done
    echo "En uzun dosya ismi: $noktali_uzun, uzunluğu: $max";
    IFS = $oldIFS;
else
    echo "Girdiğiniz parametre bir diizn değildir";
fi