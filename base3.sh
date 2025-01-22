#!/bin/bash

useradd -m g1g2
echo g1g2:password | chpasswd
usermod -aG libvirt g1g2

echo "g1g2 ALL=(ALL) ALL" >> /etc/sudoers.d/g1g2


printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"




