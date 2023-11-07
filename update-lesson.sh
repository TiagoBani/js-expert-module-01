#!/bin/bash

echo Updating submodules ...

MODULE=$1

echo Moving to $MODULE ...

cd $MODULE

git pull
git checkout main

echo Back moving ...

cd ..

echo Commit and push submodule ...

git add $MODULE
git commit -m "feat($MODULE): update submodule"

git push

echo Done !