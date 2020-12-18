##
## General
##
alias sudo='sudo '
alias ll="ls -lhA"
alias c="clear"
alias sc='xset r rate 200 100'
alias h='history'
alias j='jobs -l'
alias claim_dir='sudo chown -R $USER ./'

##
## Edit Configs
##
alias aedit='vim ~/.config/$USER/alias.zsh'
alias i3edit='vim ~/.config/i3/config'
alias vedit='vim ~/.vimrc'
alias tedit='vim ~/.tmux.conf'
alias zedit='vim ~/.zshrc'
alias zupdate='source ~/.zshrc'

##
## tmux
##
alias tmux="TERM=screen-256color-bce tmux"
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

##
## Docker
##
alias docker-clean='sudo docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker-clean_images && docker-clean_volumes'
alias docker-clean_images='sudo docker rmi $(docker images -f dangling=true -q) || true && docker rmi $(docker image list -q) || true'
alias docker-clean_volumes='sudo docker volume rm $(docker volume ls -f dangling=true -q) || true'

##
## System
##
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown'

##
## Cheatsheets
##
alias cs-apt='cat ~/.cheatsheets/apt'
alias cs-neobundle='cat ~/.cheatsheets/neobundle'
alias cs-git='cat ~/.cheatsheets/git'
alias cs-git_varia='cat ~/.cheatsheets/git-varia'
alias cs-tmux='less ~/.cheatsheets/tmux'

##
## Nspire
##
#alias KILLDERBY='rm -f ~/.m2/repository/org/apache/derby/derby/10.11.1.1/derby-10.11.1.1.ja*'
#alias nspire='wine start "C:\Program Files (x86)\TI Education\TI-Nspire CX CAS Student Software\TI-Nspire CX CAS Student Software.exe"'
#alias purge-wine='sudo pacman -Rns wine wine-mono wine_gecko && rm -r "$HOME/.wine" && rm  $HOME/.config/menus/applications-merged/wine* && rm -r "$HOME/.local/share/applications/wine" && rm $HOME/.local/share/desktop-directories/wine*'

## update betterlockscreen image with current feh wallpaper
#alias update_lockscreen="betterlockscreen -u $(grep -o "'.*'" ~/.fehbg | tr -d "'")"

##
## archlinux lol
##
alias fix_internet='sudo modprobe -r tg3 && sudo modprobe broadcom && sudo modprobe tg3'
### https://wiki.archlinux.org/index.php/Bluetooth
alias fix_bluetooth='sudo modprobe btusb && sudo systemctl restart bluetooth.service'
