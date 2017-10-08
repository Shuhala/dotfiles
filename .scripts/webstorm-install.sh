#!/bin/sh

if [ ! -d $HOME/Applications/webstorm ]; then
  dest=$HOME/Applications/webstorm
  mkdir -p $dest

  file="https://download.jetbrains.com/webstorm/WebStorm-2017.1.4.tar.gz"
  curl -L $file | tar -xzvf - -C $dest --strip-components=1
  sh $dest/bin/webstorm.sh
fi

