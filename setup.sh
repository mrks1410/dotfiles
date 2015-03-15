#! /bin/bash
# -*- mode: sh -*-
# Created 2015/03/15

# ln -s
DOT_FILES=( .zshrc .zshrc.alias .vimrc )

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

# NeoBundle install
mkdir -p $HOME/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
