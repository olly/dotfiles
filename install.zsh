#!/usr/bin/env zsh

BASE=$(dirname $0)

for file ($BASE/.*); do
  basename=$(basename $file)
  if [ $basename != ".git" ]; then
    cd $HOME
    ln -sf $file
    cd -
  fi
done
