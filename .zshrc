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

# Aliases
alias tmux='TERMINFO=/usr/share/terminfo/x/xterm-16color TERM=xterm-16color tmux -2'

alias cc="cd ~/code"
alias py3="python3"
alias quit="exit"
alias td="~/code/td/build/td"
