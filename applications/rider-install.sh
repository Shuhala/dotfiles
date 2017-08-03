#!/bin/sh

if [ ! -d $HOME/Applications/rider ]; then
  dest=$HOME/Applications/rider
  mkdir -p $dest

  file="https://download.jetbrains.com/resharper/Rider-RC-171.4456.1432.tar.gz"
  curl -L $file | tar -xzvf - -C $dest --strip-components=1
  sh $dest/bin/rider.sh
fi

