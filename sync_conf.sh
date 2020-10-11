#!/bin/bash

# brew install coreutils

set -e

DIR_SHORT=$(dirname "$0")

DIR=$(greadlink -f "$DIR_SHORT")

(cd $DIR && git pull)
cp -r $DIR/shell/.* ~/

cp ~/.aliases $DIR/shell
cp ~/.tmux.conf $DIR/shell
cp ~/.vimrc $DIR/shell
cp ~/.zshrc $DIR/shell

(cd $DIR && git add .)
(cd $DIR && git commit -m 'Auto commit.')
(cd $DIR && git push)
