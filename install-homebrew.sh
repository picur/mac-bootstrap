#!/bin/bash

###############################################################################
# Install homebrew itself
###############################################################################

if ! which brew > /dev/null; then 
  echo "Installing homebrew, OS X package manager ..."
  /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
  brew update
  brew upgrade

  # Remove outdated version from Cellar
  brew cleanup
fi