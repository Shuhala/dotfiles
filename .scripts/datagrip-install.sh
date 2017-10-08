#!/bin/sh

if [ ! -d $HOME/Applications/datagrip ]; then
  dest=$HOME/Applications/datagrip
  mkdir -p $dest

  file="https://download.jetbrains.com/datagrip/datagrip-2017.1.5.tar.gz"
  curl -L $file | tar -xzvf - -C $dest --strip-components=1
  sh $dest/bin/datagrip.sh
fi

