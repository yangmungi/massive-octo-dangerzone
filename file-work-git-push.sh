#!/bin/bash

# generates a series of commits, then pushes them to remote worker 

. ./file-work-git-commit.sh $1 $2 $3 && /usr/bin/git push worker HEAD
