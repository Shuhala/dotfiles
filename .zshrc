export ZSH=$HOME/.oh-my-zsh 			# Path to your oh-my-zsh installation.
export DOTFILES=$HOME/.config/$USER

ZSH_THEME="clean"
DEFAULT_USER=$USER 							# Hide user from command prompt

plugins=(git tmux)
source $ZSH/oh-my-zsh.sh
source $DOTFILES/alias.zsh
source $DOTFILES/zsh/settings.zsh

export EDITOR='vim'

## swap caps/escape
# setxkbmap -option caps:swapescape

## Oh my zsh! settings
ZSH_TMUX_AUTOSTART=true
export PATH="/usr/local/Cellar/ruby/3.0.0_1/bin:$PATH"
export PATH="/opt/rubies/2.6.5/bin/ruby:$PATH"
export PATH="$DOTFILES/zsh/scripts/bin:$PATH"

## Custom Autocompletion
fpath=( $DOTFILES/zsh/scripts/completions $fpath )
autoload -U compinit && compinit

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
if [ -e /Users/shuhala/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/shuhala/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }

[[ -x /usr/local/bin/brew ]] && eval $(/usr/local/bin/brew shellenv)
