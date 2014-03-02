#!/bin/bash
if [ ! -d workers ]; then
    mkdir workers
fi

for i in `seq $1`
do
    workerfile="workers/worker.$i"
    touch $workerfile

    . ./file-work-cat 400 > $workerfile
done
