#!/bin/bash

# This script generates distribution files, tags them, and pushes them
# to a branch called 'release', which is never pulled into other branches.
# A release can then be made on GitHub from the release branch.

git checkout release
git pull origin master

# generate the dist files
grunt dist

# remove lines containing 'dist' from .gitignore
sed -i '' '/dist/d' ./.gitignore

git add dist/*
git commit -m 'Release '$1
git push origin release

# tag the files and push
echo 'tagging files with v'$1

git tag v$1
git push --tags


# add /dist back to .gitignore
echo '/dist' >> ./.gitignore
