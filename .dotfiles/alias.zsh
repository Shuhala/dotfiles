# General
alias sudo='sudo '
alias ll="ls -lhA"
alias c="clear"
alias sc='xset r rate 250 50'
alias sc1='xset r rate 250 75'
alias sc2='xset r rate 200 100'
alias h='history'
alias j='jobs -l'

# Configs
alias aedit='vim ~/.dotfiles/alias.zsh'
alias vedit='vim ~/.vimrc'
alias tedit='vim ~/.tmux.conf'
alias zedit='vim ~/.zshrc'
alias zupdate='source ~/.zshrc'

# tmux
alias tmux="TERM=screen-256color-bce tmux"
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

# Docker
alias docker='sudo docker'
alias docker-clean='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Apt
alias apt-get="sudo apt-get"
alias update='sudo apt-get update -y && sudo apt-get upgrade -y'

# System
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown'

# Cheatsheets
alias cs-apt='cat ~/.cheatsheet/apt'
alias cs-neobundle='cat ~/.cheatsheet/neobundle'
alias cs-git='cat ~/.cheatsheet/git'
alias cs-git_varia='cat ~/.cheatsheet/git-varia'
alias cs-tmux='less ~/.cheatsheet/tmux'

