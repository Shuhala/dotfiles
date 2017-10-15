# General
alias sudo='sudo '
alias ll="ls -lhA"
alias c="clear"
alias sc='xset r rate 200 100'
alias h='history'
alias j='jobs -l'
alias claim_dir='sudo chown -R $USER ./'

# Configs
alias aedit='vim ~/.config/$USER/alias.zsh'
alias i3edit='vim ~/.config/i3/config'
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

# System
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown'

# Cheatsheets
alias cs-apt='cat ~/.cheatsheets/apt'
alias cs-neobundle='cat ~/.cheatsheets/neobundle'
alias cs-git='cat ~/.cheatsheets/git'
alias cs-git_varia='cat ~/.cheatsheets/git-varia'
alias cs-tmux='less ~/.cheatsheets/tmux'

# Varia
alias KILLDERBY='rm -f ~/.m2/repository/org/apache/derby/derby/10.11.1.1/derby-10.11.1.1.ja*'
alias nspire='wine start "C:\Program Files (x86)\TI Education\TI-Nspire CX CAS Student Software\TI-Nspire CX CAS Student Software.exe"'

