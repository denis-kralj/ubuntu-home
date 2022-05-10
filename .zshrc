# Docs can be found here => https://github.com/ohmyzsh/ohmyzsh/wiki/Settings

# Path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# I use oh-my-posh for my theme
eval "$(oh-my-posh --init --shell zsh --config '~/mytheme.json')"

# update oh-my-zsh automatically without asking
zstyle ':omz:update' mode auto

# plugins to use
plugins=(git aws terraform)

# use the provided data to init oh-my-zsh
source $ZSH/oh-my-zsh.sh

# env vars loaded from config
if test -f "$HOME/.ENV"; then
    source "$HOME/.ENV"
else
    echo "WARNING: Configuration file .ENV not found, some scripts might not work..."
fi

# Custom aliases
alias c=clear
alias edit-profile='code ~/.zshrc'
alias stm='~/start-mumble.sh'
alias spm='~/stop-mumble.sh'
alias stf='~/start-foundry.sh'
alias spf='~/stop-foundry.sh'
