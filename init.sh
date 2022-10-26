#!/bin/bash
bash -x tools.inst.sh
bash -x add.hosts.sh
bash -x ssh.conf.add.sh
#bash -x ssh.conf.key.sh
#bash -x ansible.inst.sh
bash -x git.init.sh
