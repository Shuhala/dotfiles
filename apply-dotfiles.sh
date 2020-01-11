#!/bin/bash

function applyConfig {
  # args: $from, $to
  read -p "Copy $1? (y/N)" -n 1 yn
  echo ""
  case $yn in
    [Yy]* )
      cp -r $2 $2.bk
      cp -r $1 $2
      ;;
    * ) ;;
  esac
}

function applyConfigRoot {
  # args: $from, $to
  read -p "Copy $1? (y/N)" -n 1 yn
  echo ""
  case $yn in
    [Yy]* ) sudo cp -r $1 $2 ;;
    * ) ;;
  esac
}

applyConfig .Xresources $HOME
applyConfig .bashrc $HOME
applyConfig .config/$USER $HOME/.config/$USER
applyConfig .config/compton.conf $HOME/.config/compton
applyConfig .config/i3 $HOME/.config/i3
applyConfig .config/ranger $HOME/.config/ranger
applyConfig .i3blocks.conf $HOME
applyConfig .tmux.conf $HOME
applyConfig .vimrc $HOME
applyConfig .xinitrc $HOME
applyConfig .xres $HOME
applyConfig .zshrc $HOME
applyConfigRoot ./var/lib/connman /var/lib/connman
