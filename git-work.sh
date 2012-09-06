#!/bin/bash
for i in `seq $1`
do
    /bin/bash massive.sh $2
    /usr/bin/git add -A && /usr/bin/git commit -m "Automated work $i."
done
