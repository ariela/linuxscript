#!/bin/sh

# 共通処理の呼び出し
case "$0" in
  /*) CURRENT_DIR=`dirname "$0"`;;
  *)  CURRENT_DIR=`dirname "$PWD/$0"`;;
esac
. ${CURRENT_DIR}/common.sh

# ディレクトリ移動
cd ~/

# インストール or 更新
if [ -d $HOME/.rvm ]; then
    rvm get head
    rvm reload
else
    bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
    echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile
    source ~/.bash_profile
fi

# 後設定
rvm -v
