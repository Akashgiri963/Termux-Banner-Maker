#!/bin/bash

echo -e "\n\n\e[33mUpdating Termux...\n\e[32m"
apt update && apt upgrade
echo -e "\n\n\e[33mDownloading Figlet...\n\e[32m"
apt install figlet -y
echo -e "\n\e[33mInstalling Toilet\n\e[32m"
apt install toilet -y
echo -e "\n\e[33mInstalling Cowsay\n\e[32m"
apt install cowsay -y
echo -e "\n\e[33mInstalling nano\n\e[32m"
apt install nano -y
echo -e "\n\e[33mInstalling Ruby\n\e[32m"
apt install ruby -y
echo -e "\n\e[33mInstalling Lolcat\n\e[32m"
gem install lolcat
echo -e "\n\e[33mDownloading Figlet-Fonts...\n\e[32m"
cd /data/data/com.termux/files/home/Termux-Banner-Maker
git clone https://github.com/xero/figlet-fonts
cp figlet-fonts/* /data/data/com.termux/files/usr/share/figlet
rm -rf figlet-fonts
echo -e "\n\e[33mSuccessfully Installed\n"
chmod +x Termux-Banner-Maker.sh
figlet -f big Enjoy | lolcat

echo 'alias tbm="cd /data/data/com.termux/files/home/Termux-Banner-Maker;bash Termux-Banner-Maker.sh"' > al.txt
cat al.txt >> /data/data/com.termux/files/usr/etc/bash.bashrc
rm al.txt
echo -e "\n\e[1;36mType tbm anywhere in termux to run Termux-Banner-Maker\n\e[0m"
