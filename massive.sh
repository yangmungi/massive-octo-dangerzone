#!/bin/bash
for i in `seq $1`
do
    workerfile="worker.$i"
    touch $workerfile

    . ./missive.sh 400 > $workerfile
done
