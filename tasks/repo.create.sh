#!/bin/bash
yum install -y vim less 
DIR="/pachages/downloads" && REPO_NAME=epel_local && PACK_NAME=vim-enchated
mkdir $DIR
chowb -R root:root $DIR
createrepo $DIR
chmod -R o-w+r $DIR
echo " [local] "
echo " name=$REPO_NAME"
echo " baseurl=file://$DIR "
echo " enabled=1 "
echo " gpgcheck=0 "
read ok
vim /etc/yum.repos.d/$REPO_NAME.repo
yum install -y $PACK_NAME
