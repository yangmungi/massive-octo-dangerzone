#!/bin/bash

# generates a series of commits, then pushes them to remote origin

. ./git-work.sh $1 $2 $3 && /usr/bin/git push origin HEAD
