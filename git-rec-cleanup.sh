#!/bin/bash

# use after done with all rec stuff

if [ -z "$1" ]
then
    echo "Needs remote name."
    exit 1
fi

rm -rv ./rec-mirror.git
/usr/bin/git remote origin remove $1
