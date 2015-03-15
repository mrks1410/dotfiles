# Created by newuser for 5.0.6
# /bin/zsh


# Vimみたいな操作
# bindkey -v

# 自動補完
autoload -U compinit; compinit

# cd
setopt auto_cd
alias ....='cd ../../'
alias ......='cd ../../../'

# ディレクトリスタック
setopt auto_pushd
setopt pushd_ignore_dups

# コマンド履歴
setopt hist_ignore_all_dups

# パス名の補完選択
zstyle ':completion:*:default' menu select=1
