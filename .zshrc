#! /bin/zsh
# -*- mode: sh -*-
# Created by newuser for 5.0.6
# 2015/03/15

# LANG
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# 指定したコマンドがなく、ディレクトリ名と一致した場合 cd する
setopt auto_cd

# cd でTabを押すとdir list を表示
setopt auto_pushd

# 勝手に pushd
setopt autopushd

# ディレクトリスタックに同じディレクトリを追加しない
setopt pushd_ignore_dups

# コマンドのスペルチェックをする
setopt correct

# コマンドライン全てのスペルチェックをする
setopt correct_all

bindkey -v

# コマンド履歴
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# 登録済みコマンドは古い方を削除
setopt hist_ignore_all_dups

# alias 設定
[ -f $HOME/dotfiles/.zshrc.alias ] && source $HOME/dotfiles/.zshrc.alias
