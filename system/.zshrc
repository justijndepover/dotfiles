# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Source dotfiles
export PATH="$DOTFILES/bin:$PATH"

# ZSH theme
ZSH_THEME="sorin"

# Ignore error on startup
ZSH_DISABLE_COMPFIX=true

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=$DOTFILES

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize wd zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
DEFAULT_USER="justijndepover"

export PATH="$HOME/.composer/vendor/bin:$PATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Custom alias
source ${DOTFILES}/system/alias.sh
source ${DOTFILES}/system/functions.sh

if [[ "$(uname)" == "Darwin" ]]; then
    source ${DOTFILES}/macos/init.sh
else
    source ${DOTFILES}/linux/init.sh
fi
