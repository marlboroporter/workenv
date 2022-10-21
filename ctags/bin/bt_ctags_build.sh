#!/bin/sh
cd $1
ctags *
# N.e append the non-static tags from descendent directories
find * -type d -prune -print | ctags -aR --file-scope=no -L-