#!/bin/sh

for name in *; do
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      echo "WARNING: $target exists but is not a symlink."
    fi
  else
    if [ "$name" != 'install.sh' ] && [ "$name" != 'README.md' ] && [ "$name" != 'direnvrc' ]; then
      echo "Creating $target"
      ln -s "$PWD/$name" "$target"
    else
      if [ "$name" = 'direnvrc' ]; then
        target=$HOME/.config/direnv
        echo "Creating $target"
        mkdir -p $target
        ln -s "$PWD/$name" "$target"
      fi
    fi
  fi
done

rm -fr ~/.vim/bundle/vundle && git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
rm -fr ~/.bash/git-aware-prompt && git clone https://github.com/jimeh/git-aware-prompt.git ~/.bash/git-aware-prompt
vim -u ~/.vimrc.bundles +BundleInstall +qa
