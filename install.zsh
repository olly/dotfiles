#!/usr/bin/env zsh

BASE=$(dirname $0)

for file ($BASE/.*); do
  cd $HOME
  ln -sf $file
done
