#!/bin/bash

pacman -S network-manager-applet wpa_supplicant alsa-utils pulseaudio pulseaudio-alsa pavucontrol bash-completion rsync reflector sof-firmware terminus-font mpv

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB 
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable sshd
systemctl enable avahi-daemon
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable libvirtd
systemctl enable firewalld
systemctl enable acpid






