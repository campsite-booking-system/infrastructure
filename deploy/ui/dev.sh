#!/usr/bin/env bash

cd /var/www/vulpee/ui

echo "### Printing dependency versions ###"
echo "node: `node -v`"
echo "npm: `npm -v`"

echo "### Getting the latest version via git ###"
git fetch origin
git reset origin/master --hard

echo "### Installing depenencies ###"
npm install

echo "### Building the app ###"
npm run storybook:build:docs
