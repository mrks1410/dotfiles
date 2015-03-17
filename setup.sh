#! /bin/bash
# -*- mode: sh -*-
# Created 2015/03/15
# Last Update 2015/03/17

# ln -s
DOT_FILES=( .zshrc .zshrc.alias .vimrc .zshenv)

for file in ${DOT_FILES[@]}
do
    [ ! -f $HOME/$file ] && ln -s $HOME/dotfiles/$file $HOME/$file
done

# NeoBundle install
[ ! -d $HOME/.vim/bundle ] && mkdir -p $HOME/.vim/bundle
[ ! -d $HOME/.vim/bundle/neobundle.vim ] && git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
