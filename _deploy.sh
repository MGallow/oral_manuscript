#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "mgalloway42024@gmail.com"
git config --global user.name "Matt Galloway"

git add .
git commit -m "Update the book" || true
git push -q origin master
