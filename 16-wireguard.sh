#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run via sudo"
  exit 1
fi

dnf -y install wireguard-tools

cd /etc/wireguard

wg genkey | tee privatekey | wg pubkey > publickey



cat << EOF > /etc/wireguard/wg0.conf
[Interface]
Address = 172.16.1.254/24
SaveConfig = true
ListenPort = 60001
PrivateKey = Change-That

[Peer]
PublicKey = Change-That-Too
AllowedIPs = 172.16.1.2/32
EOF


firewall-cmd --add-port=60001/udp --permanent --zone=public
firewall-cmd --reload


nmcli con import type wireguard file /etc/wireguard/wg0.conf
