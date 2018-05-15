# General
alias sudo='sudo '
alias ll="ls -lhA"
alias c="clear"
alias sc='xset r rate 200 100'
alias h='history'
alias j='jobs -l'
alias claim_dir='sudo chown -R $USER ./'
alias lock='sh $HOME/.config/betteri3lock.sh -l blur'
alias enable_lang_toggle='setxkbmap -layout us,ca -option grp:alt_shift_toggle'
alias cheminot='xhost +local:docker && docker run -ti --rm -e DISPLAY=:0.0 -v /tmp/.X11-unix:/tmp/.X11-unix becojo/cheminot'

# Configs
alias aedit='vim ~/.config/$USER/alias.zsh'
alias i3edit='vim ~/.config/i3/config'
alias pedit='vim ~/.config/polybar/config'
alias tedit='vim ~/.tmux.conf'
alias vedit='vim ~/.vimrc'
alias xedit='vim ~/.Xresources'
alias xupdate='xrdb ~/.Xresources'
alias zedit='vim ~/.zshrc'
alias zupdate='source ~/.zshrc'

# tmux
alias tmux="TERM=screen-256color-bce tmux"
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

# Docker
alias docker-clean='sudo docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
alias docker-purge='docker-purge_images && docker-purge_volumes'
alias docker-purge_images='sudo docker rmi $(docker images -f dangling=true -q)'
alias docker-purge_volumes='sudo docker volume rm $(docker volume ls -f dangling=true -q)'

# System
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown -P now'

# Cheatsheets
alias cs-apt='cat ~/.cheatsheets/apt'
alias cs-neobundle='cat ~/.cheatsheets/neobundle'
alias cs-git='cat ~/.cheatsheets/git'
alias cs-git_varia='cat ~/.cheatsheets/git-varia'
alias cs-tmux='less ~/.cheatsheets/tmux'

# Varia
alias KILLDERBY='rm -f ~/.m2/repository/org/apache/derby/derby/10.11.1.1/derby-10.11.1.1.ja*'
alias nspire='wine start "C:\Program Files (x86)\TI Education\TI-Nspire CX CAS Student Software\TI-Nspire CX CAS Student Software.exe"'
alias purge-wine='sudo pacman -Rns wine wine-mono wine_gecko && rm -r "$HOME/.wine" && rm  $HOME/.config/menus/applications-merged/wine* && rm -r "$HOME/.local/share/applications/wine" && rm $HOME/.local/share/desktop-directories/wine*'
alias record_screen='ffmpeg -f x11grab -r 25 -s 1600x900 -i :0.0 -vcodec libx264 ~/Videos/video.mkv'

