#!/bin/bash

# does a series of operations where each operation consists of
#   a set of creates/edits on files and a commit on the set of changes

start_date=`date`

if [ -n "$3" ]
then
    codename=", codename: $3"
else
    codename=""
fi

for i in `seq $1`
do
    /bin/bash file-work-files.sh $2
    /usr/bin/git add -A && /usr/bin/git commit -m "Automated work $i -- $start_date$codename."
done
