#!/bin/sh

# パッケージ名
PACKAGE=nginx

# バージョン情報
VERSION=1.1.14

# 共通処理の呼び出し
case "$0" in
  /*) CURRENT_DIR=`dirname "$0"`;;
  *)  CURRENT_DIR=`dirname "$PWD/$0"`;;
esac
. ${CURRENT_DIR}/common.sh

# ディレクトリ作成
/usr/bin/sudo /bin/mkdir -p /usr/local/nginx-${VERSION}
/usr/bin/sudo /bin/mkdir /var/tmp/nginx/{proxy,client,fcgi}

# 設定ファイルのバックアップ
backup_file /etc/nginx/nginx.conf

# 古いバージョンの削除
uninstall ${PACKAGE}

# ディレクトリ移動
cd ~/src

# ダウンロード
/usr/bin/wget http://nginx.org/download/nginx-${VERSION}.tar.gz

# 解凍
/bin/tar zxvf nginx-${VERSION}.tar.gz
cd nginx-${VERSION}

# 設定・ビルド
./configure \
    --prefix=/usr/local/nginx-${VERSION} \
    --conf-path=/etc/nginx/nginx.conf \
    --http-log-path=/var/log/nginx/access.log \
    --error-log-path=/var/log/nginx/error.log \
    --pid-path=/var/run/nginx/nginx.pid \
    --lock-path=/var/lock/nginx.lock \
    --http-client-body-temp-path=/var/tmp/nginx/client/ \
    --http-proxy-temp-path=/var/tmp/nginx/proxy/ \
    --http-fastcgi-temp-path=/var/tmp/nginx/fcgi/ \
    --user=nginx \
    --group=nginx
/usr/bin/make

# インストール
/usr/bin/sudo /usr/local/bin/paco -p ${PACKAGE}-${VERSION} /usr/bin/make install

# 後設定
/usr/bin/sudo /bin/ln -fns /usr/local/nginx-${VERSION} /usr/local/nginx
