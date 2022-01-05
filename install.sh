#!/usr/bin/env zsh

DOTFILES=~/.dotfiles

pushd $DOTFILES
for folder in `ls $DOTFILES`; do
    if [ -d "$folder" ]; then
        stow -D $folder
        stow $folder
    fi
done
popd
