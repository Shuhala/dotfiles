#!/bin/sh

if [ ! -d $HOME/Applications/intellij ]; then
  dest=$HOME/Applications/intellij
  mkdir -p $dest

  file="https://download.jetbrains.com/idea/ideaIU-2017.1.5.tar.gz"
  curl -L $file | tar -xzvf - -C $dest --strip-components=1
  sh $dest/bin/idea.sh
fi

