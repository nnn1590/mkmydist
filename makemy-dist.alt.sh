#!/bin/bash
set -e +H

declare _MAKEMYDIST_ISONAME=""
if [ "x${1}X" == "xX" ]; then
    _MAKEMYDIST_ISONAME="mydist.iso"
else
    _MAKEMYDIST_ISONAME="${1}"
fi

echo -e "\e[1m==========================="
echo         "        makemydist         "
echo         "Root privilege is required."
echo -e      "===========================\e[m"
if [ "$EUID" -ne 0 ]; then
    echo -e "\e[1;31mERROR\e[m: Please run as root (e.g. sudo -E ${0})"
    exit 1
fi
echo -e "\e[1;34mINFO\e[m: Copying settings files..."
cp -r "${HOME}/.local/share/applications/" "/etc/skel/.local/"
cp -r "${HOME}/.config/autostart/"         "/etc/skel/.config/"
cp -r "${HOME}/.config/dconf/"             "/etc/skel/.config/"
cp -r "${HOME}/.config/gtk-2.0/"           "/etc/skel/.config/"
cp -r "${HOME}/.config/gtk-3.0/"           "/etc/skel/.config/"
cp -r "${HOME}/.config/Thunar/"            "/etc/skel/.config/"
cp -r "${HOME}/.config/xfce4/"             "/etc/skel/.config/"
echo -e "\e[1;34mINFO\e[m: Upgrading system..."
apt update && apt upgrade -y
echo -e "\e[1;34mINFO\e[m: Removing unused dependencies..."
apt autoremove
PinguyBuilder clean
echo -e "\e[1;34mINFO\e[m: Ready to build."
PinguyBuilder dist
PinguyBuilder dist iso "${_MAKEMYDIST_ISONAME}"
echo -e "\e[1;32mDone!\e[m ISO: \"${_MAKEMYDIST_ISONAME}\""
