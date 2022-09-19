#!/bin/bash
sudo yum -y install ansible 
sudo su <<'EOF'
sed -i 's/#inventory      = \/etc\/ansible\/hosts/inventory      = ~\/hosts/g' /etc/ansible/ansible.cfg
# sed -i 's/enable_plugins = host_list, virtualbox, yaml, constructed/enable_plugins = ini, host_list, yaml/g' /etc/ansible/ansible.cfg
exit
EOF

#echo "
#" >> ~/.ssh/config
#vim ~/hosts

#mkdir group_vars
#for i in {stapp01 stapp02 stapp03 stlb01 stdb01 ststor01 stbkp01 stmail01}; do vim group_vars/$i_ ; done

# hosts.ini
echo "[stapp]" >> ~/hosts
 echo "stapp01		ansible_user=tony	ansible_ssh_private_key_file=~/.ssh/id_rsa	ansible_sudo_pass=Ir0nM@n " >> ~/hosts
 echo "stapp02		ansible_user=steve	ansible_ssh_private_key_file=~/.ssh/id_rsa	ansible_sudo_pass=Am3ric@ " >> ~/hosts
 echo "stapp03		ansible_user=banner	ansible_ssh_private_key_file=~/.ssh/id_rsa	ansible_sudo_pass=BigGr33n" >> ~/hosts
 echo "   " >> ~/hosts
echo "[lbdb]" >> ~/hosts
 echo "stlb01		ansible_user=loki	ansible_ssh_private_key_file=~/.ssh/id_rsa	ansible_sudo_pass=Mischi3f" >> ~/hosts
 echo "   " >> ~/hosts
 echo "stdb01		ansible_user=peter	ansible_ssh_private_key_file=~/.ssh/id_rsa	ansible_sudo_pass=Sp!dy " >> ~/hosts
 echo "   " >> ~/hosts
echo "[store]" >> ~/hosts
 echo "ststor01	ansible_user=natasha	ansible_ssh_private_key_file=~/.ssh/id_rsa	ansible_sudo_pass=Bl@kW " >> ~/hosts
 echo "   " >> ~/hosts
 echo "stbkp01		ansible_user=clint	ansible_ssh_private_key_file=~/.ssh/id_rsa	ansible_sudo_pass=H@wk3y3 " >> ~/hosts
 echo "   " >> ~/hosts
echo "[mail]" >> ~/hosts
 echo "stmail01	ansible_user=groot	ansible_ssh_private_key_file=~/.ssh/id_rsa	ansible_sudo_pass=Gr00T123" >> ~/hosts
 echo "   " >> ~/hosts

#Playbooks
# install tools on all servers asycron
