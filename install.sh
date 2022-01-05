#!/usr/bin/env zsh
DOTFILES=~/.dotfiles

# check that the repo exists
if [ ! -e $DOTFILES ]; then
    pushd $HOME
    git clone git@github.com:augustinesaidimu/.dotfiles.git
    popd
fi

# install dotfiles
pushd $DOTFILES
for folder in `ls $DOTFILES`; do
    if [ -d "$folder" ]; then
        stow -D $folder
        stow $folder
    fi
done
popd
