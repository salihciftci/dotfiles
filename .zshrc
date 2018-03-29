# Path to your oh-my-zsh installation.
export ZSH=/Users/salih/.oh-my-zsh

# Theme
ZSH_THEME="xxf"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

#Plugins
plugins=(
  git
)

# User configuration
source $ZSH/oh-my-zsh.sh
source ~/.private

#GO
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# Aliases
alias python="/Library/Frameworks/Python.framework/Versions/3.6/bin/python3"
alias pip="python -m pip"

alias tmux='TERMINFO=/usr/share/terminfo/x/xterm-16color TERM=xterm-16color tmux -2'
