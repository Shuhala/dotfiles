#!/bin/sh

cp -r $HOME/.cheatsheets .  2>>/dev/null

cp -r $HOME/.config/i3 ./.config/i3
cp -r $HOME/.config/$USER ./.config/$USER 2>>/dev/null
cp -r $HOME/.config/ranger ./.config/ranger 2>>/dev/null
cp -f $HOME/.config/betteri3lock.sh ./.config 2>>/dev/null
cp -f $HOME/.config/compton.conf ./.config/compton.conf 2>>/dev/null

cp -f $HOME/.i3blocks.conf .
cp -f $HOME/.bashrc .
cp -f $HOME/.vimrc .
cp -f $HOME/.xinitrc .
cp -r $HOME/.xres .
cp -f $HOME/.Xresources .
cp -f $HOME/.zshrc .

