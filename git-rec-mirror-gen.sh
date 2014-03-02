#!/bin/bash

if [ -z "$1" ]
then
    echo "Needs remote name."
    exit 1
fi

/usr/bin/git clone --mirror . ./rec-mirror.git
/usr/bin/git remote add $1 ./rec-mirror.git
