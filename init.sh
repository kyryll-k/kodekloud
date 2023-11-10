#!/bin/bash
bash -x tools.inst.sh
bash -x add.hosts.sh
bash -x ssh.conf.add.sh
bash -x ssh.conf.key.app.sh
bash -x ssh.conf.key.other.sh
bash -x ansible.inst.sh
bash -x git.init.sh
