#!/bin/bash
user=`whoami`
echo "Donot run this as root! may be with a user has sudo privileges"

env_file=/home/${user}/.zshrc

sudo yum update
sudo yum install -y  git file gcc cmake perl

echo "=================== install oh my zsh ============================="

sudo yum install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# update zsh theme
sed -i 's/^ZSH_THEME/#&/' $env_file
sed -i '/^#ZSH_THEME/aZSH_THEME="ys"' $env_file

sed -i 's/^plugins=/#&/' $env_file
sed -i '/^#plugins=/aplugins=(git zsh-syntax-highlighting zsh-autosuggestions)' $env_file


source $env_file


echo "================== install brew for linux ============================"
# prepare for non root user
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo "config brew automate"
echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> $env_file
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

echo "=================== install common tools ============================="
brew install jq exa httpie lrzsz minio-mc fzf fd lnav

