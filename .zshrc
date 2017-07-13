export ZSH=/home/shuhala/.oh-my-zsh # Path to your oh-my-zsh installation.
export DOTFILES=/home/shuhala/.dotfiles
export CONFIG=$DOTFILES/zsh

# Theme
ZSH_THEME="shuhala"
DEFAULT_USER=shuhala # Hide user from command prompt

# Plugins can be found in ~/.oh-my-zsh/plugins/*
plugins=(git debian nyan command-not-found tmux tmuxinator)
source $ZSH/oh-my-zsh.sh

# Global config
source $DOTFILES/alias.zsh
source $CONFIG/settings.zsh

# Alias
source $DOTFILES/alias.zsh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
  else
    export EDITOR='mvim'
fi

