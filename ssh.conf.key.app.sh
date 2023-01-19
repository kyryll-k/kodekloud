#!/bin/bash
### vim .ssh/config

grep "PAS" .ssh/config
for i in `grep "Host stapp" ~/.ssh/config | awk '{print $2}'`; do sshpass -p `grep "PAS $i" ~/.ssh/config | awk '{print $4}'` ssh-copy-id $i ; done

