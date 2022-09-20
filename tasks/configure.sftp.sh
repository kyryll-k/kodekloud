#!/bin/bash
mkdir -p /var/www/nfsdata
chown root:root /var/www/nfsdata
chmod 755 /var/www/nfsdata
useradd -m -d /var/www/nfsdata/john -s /sbin/nologin john
passwd john
chown john:john /var/www/nfsdata/john

sed -i 's/UsePAM no/UsePAM yes/g' /etc/ssh/sshd_config 

echo "Match User john" >>  /etc/ssh/sshd_config
echo "ForceCommand internal-sftp" >>  /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >>  /etc/ssh/sshd_config
echo "ChrootDirectory /var/www/nfsdata" >>  /etc/ssh/sshd_config
echo "PermitTunnel no" >>  /etc/ssh/sshd_config
echo "AllowAgentForwarding no" >>  /etc/ssh/sshd_config
echo "AllowTcpForwarding no" >>  /etc/ssh/sshd_config
echo "X11Forwarding no" >>  /etc/ssh/sshd_config

systemctl reload sshd

