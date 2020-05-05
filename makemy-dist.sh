#!/bin/bash -e +H
echo '==========================='
echo '        makemydist         '
echo 'Root privilege is required.'
echo '==========================='
echo 'Copying settings files...'
sudo -E -- cp -r "${HOME}/.local/share/applications/" "/etc/skel/.local/"
sudo -E -- cp -r "${HOME}/.config/autostart/"         "/etc/skel/.config/"
sudo -E -- cp -r "${HOME}/.config/dconf/"             "/etc/skel/.config/"
sudo -E -- cp -r "${HOME}/.config/gtk-2.0/"           "/etc/skel/.config/"
sudo -E -- cp -r "${HOME}/.config/gtk-3.0/"           "/etc/skel/.config/"
sudo -E -- cp -r "${HOME}/.config/Thunar/"            "/etc/skel/.config/"
sudo -E -- cp -r "${HOME}/.config/xfce4/"             "/etc/skel/.config/"
echo 'Upgrading system...'
sudo -E -- apt update && sudo -E -- apt upgrade -y
echo 'Remove unused dependencies...'
sudo -E -- apt autoremove
sudo -E -- PinguyBuilder clean
echo 'Ready to build.'
sudo -E -- PinguyBuilder dist
sudo -E -- PinguyBuilder dist iso mydist.iso
echo 'Done!'
