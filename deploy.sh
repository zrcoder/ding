#!/usr/bin/env bash

rm -rf public
hugo
cd public

git init
git add -A
git commit -m "deploy"
git push -f https://gitee.com/rdor/essays master:pages

cd ..
