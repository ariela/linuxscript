#!/bin.sh

# iptablesの設定初期化
/sbin/iptables -F
/sbin/iptables -X
 
# デフォルトルールを設定(IN:NG/OUT:OK/FW:NG)
/sbin/iptables -P INPUT DROP
/sbin/iptables -P OUTPUT ACCEPT
/sbin/iptables -P FORWARD DROP
 
# ローカルネットワーク設定
/sbin/iptables -A INPUT -i lo -j ACCEPT
/sbin/iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# フラグメントをドロップ
/sbin/iptables -A INPUT -f -j LOG --log-level debug --log-prefix 'FRAGMENT DROP:'
/sbin/iptables -A INPUT -f -j DROP

# PINGを許可(1分に10回のみ解答)
/sbin/iptables -A INPUT -p icmp --icmp-type echo-request -m hashlimit --hashlimit-name t_icmp --hashlimit 1/m --hashlimit-burst 10 --hashlimit-mode srcip --hashlimit-htable-expire 120000 -j ACCEPT

# マルチキャストをドロップ
/sbin/iptables -A INPUT -d 255.255.255.255 -j DROP
/sbin/iptables -A INPUT -d 224.0.0.1 -j DROP

# IDENTをドロップ
/sbin/iptables -A INPUT -p tcp --dport 113 -j REJECT --reject-with tcp-reset

# sshを許可(1分に1回のみ接続)
/sbin/iptables -A INPUT -p tcp -m state --syn --state NEW --dport 22 -m hashlimit --hashlimit-name t_sshd --hashlimit 1/m --hashlimit-burst 1 --hashlimit-mode srcip --hashlimit-htable-expire 120000 -j ACCEPT

# http/httpsを許可
/sbin/iptables -A INPUT -p tcp --dport 80 -j ACCEPT
/sbin/iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# ftpを許可
# /sbin/iptables -A INPUT -p tcp --dport 21 -j ACCEPT
# /sbin/iptables -A INPUT -p tcp --dport 4000:4029 -j ACCEPT

# DNSを許可
#/sbin/iptables -A INPUT -p tcp --dport 53 -j ACCEPT
#/sbin/iptables -A INPUT -p udp --dport 53 -j ACCEPT

# SMTPを許可
#/sbin/iptables -A INPUT -p tcp --dport 25 -j ACCEPT

# SMTPSを許可
#/sbin/iptables -A INPUT -p tcp --dport 465 -j ACCEPT

# POP3を許可
#/sbin/iptables -A INPUT -p tcp --dport 110 -j ACCEPT

# POP3Sを許可
#/sbin/iptables -A INPUT -p tcp --dport 995 -j ACCEPT

# IMAPを許可
#iptables -A INPUT -p tcp --dport 143 -j ACCEPT

# IMAPSを許可
#/sbin/iptables -A INPUT -p tcp --dport 993 -j ACCEPT

# ログ設定
/sbin/iptables -A INPUT -m limit --limit 1/s -j LOG --log-level debug --log-prefix 'INPUT DROP:'
/sbin/iptables -A INPUT -j DROP
/sbin/iptables -A FORWARD -m limit --limit 1/s -j LOG --log-level debug --log-prefix 'FORWARD DROP:'
/sbin/iptables -A FORWARD -j DROP

# 再起動
/sbin/service iptables save
/sbin/service iptables restart
/sbin/chkconfig iptables on
