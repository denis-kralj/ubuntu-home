#!/bin/bash

# installing zshell, AWS cli and jq for JSON parsing
sudo apt-get install zsh awscli jq

# set default shell to zsh
sudo chsh -s $(which zsh)

# download and install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# download and install oh my posh
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh