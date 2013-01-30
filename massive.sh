#!/bin/bash

for i in `seq 4000 4999`
do
    touch $i

    strwrites=$RANDOM
    let "strwrites %= 400"

    filestr=""

    for j in `seq $strwrites`
    do
        writestr=$RANDOM
        let "writestr %= 2"

        filestr=$filestr$writestr
    done

    echo $filestr > $i
done
