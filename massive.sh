#!/bin/bash

for i in `seq 4000 4999`
do
    touch $i

    strwrites=$RANDOM
    let "strwrites %= 100"

    for j in `seq $strwrites`
    do
        echo $RANDOM >> $i
    done
done
