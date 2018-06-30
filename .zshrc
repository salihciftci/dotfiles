# Exports
export ZSH=/Users/salih/.oh-my-zsh
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GPG_TTY=$(tty)

# Theme
ZSH_THEME="xxf"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# User configuration
source $ZSH/oh-my-zsh.sh
source ~/.private
source ~/.aliases
source ~/.functions

#Plugins
plugins=(
  git
)

