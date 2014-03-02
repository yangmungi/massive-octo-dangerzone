#!/bin/bash
inittime=`date`
if [ -z "$2" ]
then
    echo "$0 <times run> <git remote>"
    exit
fi
    
for i in `seq $1`
do
    /usr/bin/git add ./rec-mirror.git \
        && /usr/bin/git commit -m "Automated recursive git repository work $i - started $inittime." \
        && /usr/bin/git push $2
done
