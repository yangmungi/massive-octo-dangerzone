#!/bin/bash
./git-work.sh 5 5 && latesttag=`git tag | sort -r | head -1 | sed -e 's/\([0-9]*\).*/\1/' | awk '{ print $0+1}'` && git tag `printf "%03d" $latesttag`-gm && git push origin --tags
