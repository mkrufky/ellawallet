#!/usr/bin/env bash

set -e

git add -f ./dist
TREE_OBJ_ID=`git write-tree --prefix=dist`
git reset -- ./dist
COMMIT_ID=`git commit-tree -p gh-pages -m "Release gh-pages" $TREE_OBJ_ID`
git update-ref refs/heads/gh-pages $COMMIT_ID
