#!/bin/bash
# Does commits, creates tag, pushes tag
latesttag=`git tag | sort -r | head -1 | sed -e 's/\([0-9]*\).*/\1/' | awk '{ print $0 + 1 }'` 
./file-work-git-commit.sh 5 5 && git tag `printf "%03d" $latesttag`-gm && git push worker --tags
