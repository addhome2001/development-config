export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/seven/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"

# configs
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"
CASE_SENSITIVE="true"

# plugins
plugins=(git)
plugins=(zsh-autosuggestions)
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


