#!/bin/sh

echo "Generating ssh key pair if not exists ..."
  [[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -t rsa

echo "Generate shh config if not exists ..."
  [[ -f ~/.ssh/config ]] || touch ~/.ssh/config

if ! which brew > /dev/null; then 
  echo "Installing homebrew, OS X package manager ..."
  /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
  brew update
  brew upgrade

  # Remove outdated version from Cellar
  brew cleanup
fi
