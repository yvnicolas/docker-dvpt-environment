#!/bin/bash

# update ssh port
sed -i "s/Port 22/Port $SSHPORT/" /etc/ssh/sshd_config

# change root password
echo "root:$ROOTPWD" | chpasswd

# launch ssh daemon
/usr/sbin/sshd -D

