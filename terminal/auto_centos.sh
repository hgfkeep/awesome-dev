#!/bin/bash
user=`whoami`
echo "Donot run this as root! may be with a user has sudo privileges"

sudo yum update
sudo yum install -y  git file gcc cmake perl

echo "================== install brew for linux ============================"
# prepare for non root user
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo "config brew automate"
echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/${user}/.bash_profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

echo "=================== install common tools ============================="
brew install jq exa httpie lrzsz minio-mc fzf fd lnav

echo "=================== install oh my zsh ============================="

yum install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# update zsh theme
sed -i 's/^ZSH_THEME/#&/' .zshrc
sed -i '/^#ZSH_THEME/aZSH_THEME="ys"' .zshrc

sed -i 's/^plugins=/#&/' .zshrc
sed -i '/^#plugins=/aplugins=(git zsh-syntax-highlighting zsh-autosuggestions)' .zshrc


source ~/.zshrc

