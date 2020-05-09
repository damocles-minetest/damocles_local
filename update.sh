#!/bin/sh

git submodule init
git submodule update

cd worldmods && ./update.sh
