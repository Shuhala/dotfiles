export ZSH=$HOME/.oh-my-zsh 			# Path to your oh-my-zsh installation.
export CONFIG=$HOME/.config/$USER

ZSH_THEME="clean"
DEFAULT_USER=$USER 							# Hide user from command prompt

plugins=(git tmux)
source $ZSH/oh-my-zsh.sh
source $CONFIG/alias.zsh
source $CONFIG/zsh/settings.zsh

export EDITOR='vim'

# swap caps/escape
setxkbmap -option caps:swapescape

# Oh my zsh! settings
ZSH_TMUX_AUTOSTART=true
