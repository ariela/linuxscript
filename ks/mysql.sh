#!/bin/sh

# 共通処理の呼び出し
case "$0" in
  /*) CURRENT_DIR=`dirname "$0"`;;
  *)  CURRENT_DIR=`dirname "$PWD/$0"`;;
esac
. ${CURRENT_DIR}/common.sh

# ディレクトリ作成
/bin/mkdir -p ~/backup

# 設定ファイルのバックアップ
backup_file /etc/my.cnf

# インストール
/usr/bin/sudo /usr/bin/yum -y install mysql-server mysql-devel

# 後設定
/bin/cp ${CURRENT_DIR}/conf/my.cnf /etc/my.cnf
/usr/bin/sudo /usr/bin/mysql_install_db
/usr/bin/sudo /usr/bin/mysql_secure_installation

# サービス登録
/usr/bin/sudo /sbin/service mysqld start
/usr/bin/sudo /sbin/chkconfig mysqld on
