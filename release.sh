#!/bin/bash

# This script generates distribution files, tags them, and pushes them
# to a branch called 'release', which is never pulled into other branches.
# A release can then be made on GitHub from the release branch.

# USAGE:
# $ ./release.sh 0.20.2

# abort script if something errors
set -e

# check out release branch and pull latest master in
git checkout release
git reset --hard origin/master

# pull release again so we have the history of releases
git pull origin release

# check whether we have uncommitted/untracked changes and abort if so
git diff-index --quiet origin/master

# generate the dist files
grunt dist

# remove lines consisting of 'dist' from .gitignore
perl -pi.orig -e 's/\/dist\n//' .gitignore

# commit and push dist files to release branch
git add dist/*
git commit -m 'Release '$1
git push origin release

# tag the files and push tags
echo 'tagging files with v'$1
git tag v$1
git push --tags

# add /dist back to .gitignore
mv .gitignore.orig .gitignore
