#!/bin/bash

# generates a bunch of output with random binary strings in them

strwrites=$RANDOM
let "strwrites %= $1" 

filestr=""

for j in `seq $strwrites`
do
    writestr=$RANDOM

    let "writestr %= 8"

    if [ $writestr -eq 7 ]
    then
        echo $filestr
        filestr=""
    fi

    let "writestr %= 2"

    filestr=$filestr$writestr
done

echo $filestr 
