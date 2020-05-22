#!/bin/bash

echo "Donot run this as root! may be with a user has sudo privileges"

sudo yum update
sudo yum install -y  git file gcc cmake perl

echo "================== install brew for linux ============================"
# prepare for non root user
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo "config brew automate"
echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/hgf/.bash_profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

echo "=================== install common tools ============================="
brew install jq exa httpie lrzsz minio-mc fzf fd lnav
