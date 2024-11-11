#!/bin/bash -uxe
# A bash script that prepares the OS after first log in
# Quit on error
#set -e
passwd
read -p "Please enter your SSH public key: " ssh_key_pair
cat ssh_key_pair >> ~/.ssh/authorized_keys
sed -i '/^PermitRootLogin[ \t]\+\w\+$/{ s//PermitRootLogin no/g; }' /etc/ssh/sshd_config
