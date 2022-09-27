#!/bin/bash
PORT=8089 && SERVER=stapp01
ansible -b -m ping stapp
ansible -b -m shell -a "iptables-save"  stapp
sudo yum install nmap vim less
ansible -b -m shell -a "yum install -y nmap net-tools vim"  stapp
ansible -b -m shell -a "yum install -y nmap net-tools vim"  stlb01

nmap -Pn $SERVER -p $PORT
ansible -b -m shell -a "cat /etc/hosts" stapp
ansible -b -m shell -a "iptables -A INPUT -s 172.16.238.14/32 -p tcp -m tcp --dport $PORT -j ACCEPT" stapp
ansible -b -m shell -a "iptables -A INPUT -p tcp -m tcp --dport $PORT -j DROP" stapp
ansible -b -m shell -a "iptables-save" stapp
nmap -Pn $SERVER -p $PORT
ssh stlb01
nmap -Pn $SERVER -p $PORT
