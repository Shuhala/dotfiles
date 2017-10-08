#!/bin/sh

if [ ! -d $HOME/Applications/pycharm ]; then
  dest=$HOME/Applications/pycharm
  mkdir -p $dest

  file="https://download.jetbrains.com/python/pycharm-professional-2017.1.5.tar.gz"
  curl -L $file | tar -xzvf - -C $dest --strip-components=1
  sh $dest/bin/pycharm.sh
fi

