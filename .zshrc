export ZSH=/home/$USER/.oh-my-zsh 			# Path to your oh-my-zsh installation.
export CONFIG=/home/$USER/.config/$USER

ZSH_THEME="agnoster"
DEFAULT_USER=$USER 							# Hide user from command prompt

plugins=(git)
source $ZSH/oh-my-zsh.sh
source $CONFIG/alias.zsh
source $CONFIG/zsh/settings.zsh

export EDITOR='vim'
