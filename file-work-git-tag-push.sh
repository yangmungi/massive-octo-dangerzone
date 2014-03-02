#!/bin/bash

# does commits, creates tag, pushes tag

latesttag=`/usr/bin/git tag | sort -r | /usr/bin/head -1 | sed -e 's/\([0-9]*\).*/\1/' | /usr/bin/awk '{ print $0 + 1 }'` 
./file-work-git-commit.sh 5 5 && /usr/bin/git tag `printf "%03d" $latesttag`-gm && /usr/bin/git push worker --tags
