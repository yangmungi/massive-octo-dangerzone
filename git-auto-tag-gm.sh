#!/bin/bash

tag=`/usr/bin/git tag | sort | tail -n1 | sed -e 's/[^0-9]//g'`
pad=${#tag}

num=`echo $tag | sed -e 's/0//g'`
new=$(($num + 1))

printfmode="%0"$pad"d"
gmnum=`printf $printfmode $new`

gmtag=$gmnum"-gm"

/usr/bin/git tag $gmtag
