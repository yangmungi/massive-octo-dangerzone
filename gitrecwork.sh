#!/bin/bash
inittime=`date`
for i in `seq $1`
do
    /usr/bin/git add -A \
        && /usr/bin/git commit -m "Automated recursive git repository work $i - started $inittime." \
        && /usr/bin/git push origin
done
