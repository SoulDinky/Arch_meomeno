#!/bin/bash

locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
ln -sf /usr/share/zoneinfo/Europe/Athens /etc/localtime
hwclock --systohc --utc
echo "elenitsa" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 elenitsa.localdomain elenitsa" >> /etc/hosts







