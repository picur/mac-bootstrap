#!/bin/bash

###############################################################################
# Setup SSH
###############################################################################

echo "Generating ssh key pair if not exists ..."
  [[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -t rsa

echo "Generate shh config if not exists ..."
  [[ -f ~/.ssh/config ]] || touch ~/.ssh/config