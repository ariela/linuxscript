#!/bin/sh

# パッケージ名
PACKAGE=paco

# バージョン情報
VERSION=1.1.14

# 共通処理の呼び出し
case "$0" in
  /*) CURRENT_DIR=`dirname "$0"`;;
  *)  CURRENT_DIR=`dirname "$PWD/$0"`;;
esac
. ${CURRENT_DIR}/common.sh

# 古いバージョンの削除
uninstall ${PACKAGE}

# ディレクトリ移動
cd ~/src

# ダウンロード
/usr/bin/wget http://downloads.sourceforge.net/project/paco/paco/${VERSION}/paco-${VERSION}.tar.gz

# 解凍
/bin/tar zxvf paco-${VERSION}.tar.gz
cd paco-${VERSION}

# 設定・ビルド
./configure \
    --disable-gpaco
/usr/bin/make

# インストール
/usr/bin/sudo /usr/bin/make install
/usr/bin/sudo /usr/bin/make logme