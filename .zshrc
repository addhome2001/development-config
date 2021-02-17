export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/seven/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"

# configs
ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"

# plugins
plugins=(git)
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# aliases
alias zshconfig="bat ~/.zshrc"
alias do=docker
alias gl="git log --oneline --graph"
alias cat=bat

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# functions
pid() {
    lsof -i tcp:"$1"
}


