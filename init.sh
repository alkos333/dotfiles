#!/bin/sh

git clone --bare https://github.com/alkos333/dotfiles $HOME/.cfg

function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

mkdir -p .dotfiles-backup
config checkout

if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi;

config checkout
config config status.showUntrackedFiles no
