#!/bin/bash
start_date=`date`

if [ -n "$3" ]
then
    codename=", codename: $3"
else
    codename=""
fi

for i in `seq $1`
do
    /bin/bash massive.sh $2
    /usr/bin/git add -A && /usr/bin/git commit -m "Automated work $i -- $start_date$codename."
done
