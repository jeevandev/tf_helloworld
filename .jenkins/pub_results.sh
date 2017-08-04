#!/bin/bash

#Publish build results
echo '--------------------------------------------------------------------------------'
echo 'Publishing build results'
echo '--------------------------------------------------------------------------------'

git remote add origin git@github.com:jeevandev/tf_helloworld.git || true # allow `remote add` to fail without failing script
git remote set-url origin git@github.com:jeevandev/tf_helloworld.git
git fetch origin gh-pages:gh-pages
git fetch origin gh-pages
git stash
git checkout gh-pages
git branch --set-upstream-to=origin/gh-pages gh-pages
git pull
echo "Success" > status.txt
git add status.txt

git commit -a -m "publish reports to gh-pages" || true # allow `remote add` to fail without failing script (if nothing to add)
git push -u origin gh-pages
git checkout master
git pull
