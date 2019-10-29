#!/bin/bash

apt update && apt upgrade
apt install figlet -y
apt install toilet -y
apt install cowsay -y
apt install nano -y
apt install ruby -y
gem install lolcat
git clone https://github.com/xero/figlet-fonts
cd /data/data/com.termux/files/usr/share
mv figlet-fonts/* figlet && rm -rf figlet-fonts
chmod +x Termux-Baner-Maker.sh
figlet -f big Enjoy | lolcat
echo
echo
