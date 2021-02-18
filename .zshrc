export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/seven/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"

# configs
# theme font
# refer to https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions#step-2-install-a-powerline-font
# POWERLEVEL9K_MODE="nerdfont-complete"
# sohrt the directories
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_last
POWERLEVEL9K_DIR_MAX_LENGTH=1
# CASE_SENSITIVE="true"
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

# plugins
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(node_version time)

source $ZSH/oh-my-zsh.sh

# aliases
alias czsh="bat ~/.zshrc"
alias vzsh="vim ~/.zshrc"
alias doc=docker
alias gl="git log --oneline --graph"
alias cat=bat

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# functions
port() {
    lsof -i tcp:"$1"
}


