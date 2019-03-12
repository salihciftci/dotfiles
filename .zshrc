# Exports
export ZSH=/home/salih/.oh-my-zsh
export PATH=$PATH:/usr/local/go/bin
export GPG_TTY=$(tty)

# Theme
ZSH_THEME="xxf"

#Plugins
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

# User configuration
source $ZSH/oh-my-zsh.sh
source ~/.private
source ~/.aliases
source ~/.functions
