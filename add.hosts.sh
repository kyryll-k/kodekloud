#!/bin/bash
sudo su <<'EOF'
echo "172.16.238.10 stapp01" >> /etc/hosts && echo "172.16.238.11  stapp02" >> /etc/hosts
echo "172.16.238.12 stapp03" >> /etc/hosts && echo "172.16.238.14  stlb01" >> /etc/hosts
echo "172.16.239.10 stdb01" >> /etc/hosts && echo "172.16.238.15 ststor1" >> /etc/hosts
echo "172.16.238.16 stbkp01" >> /etc/hosts && echo "172.16.238.17 stmail01" >> /etc/hosts
echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config && echo "ConnectTimeout 5" >> /etc/ssh/ssh_config && systemctl restart sshd.service
exit
EOF

echo "alias pas='grep PAS ~/.ssh/config '" >> ~/.bashrc
echo "alias ssh='pas && ssh '" >> ~/.bashrc && source ~/.bashrc
echo "Use PAS IF you need to see passwords!" && touch ~/.ssh/config && chmod 600 ~/.ssh/config

