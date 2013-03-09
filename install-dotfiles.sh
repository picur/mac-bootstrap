#!/bin/bash

REPOSITORY='git@github.com:picur/dotfiles.git'
TARGET_DIR=~/.dotfiles

# If the directory doesn't exist, create it
if [ ! -d "$TARGET_DIR" ] ; then
    mkdir -p `dirname $TARGET_DIR`
    cd `dirname $TARGET_DIR`
    git clone $REPOSITORY `basename $TARGET_DIR`
fi

# Run the install (this is repetition-safe)
cd "$TARGET_DIR"
source bootstrap.sh