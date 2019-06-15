# Exports
export ZSH=/home/salih/.oh-my-zsh
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/salih/go/bin
export PATH=~/.npm-global/bin:$PATH
export GPG_TTY=$(tty)

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

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
