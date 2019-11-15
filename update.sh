#! /bin/bash

red="\e[0;31m"
green="\e[0;32m"
default="\e[0m"

echo -e "$red [$green+$red]$green Cleaning Up Old Directories ...";
rm -rf /data/data/com.termux/files/usr/share/Termux-Banner-Maker/*
echo -e "$red [$green+$red]$green Installing ...\n";
git clone https://github.com/Akashgiri963/Termux-Banner-Maker.git "/data/data/com.termux/files/usr/share/Termux-Banner-Maker";

if [ -e "/data/data/com.termux/files/usr/share/Termux-Banner-MakerTermux-Banner-Maker.sh" ] ;
then
chmod +x /data/data/com.termux/files/usr/share/Termux-Banner-Maker/install.sh
chmod +x /data/data/com.termux/files/usr/share/Termux-Banner-Maker/update.sh
chmod +x /data/data/com.termux/files/usr/share/Termux-Banner-Maker/Termux-Banner-Maker.sh
rm -rf /data/data/com.termux/files/home/Termux-Banner-Maker
cp -r  /data/data/com.termux/files/usr/share/Termux-Banner-Maker /data/data/com.termux/files/home
rm -rf /data/data/com.termux/files/home/Termux-Banner-Maker/update.sh
echo -e "\n$red [$green+$red]$green Tool Successfully Updated And Will Start In 5s!";
echo -e "\n$red [$green+$red]$green You can execute tool by typing -> $red TBM$default"
sleep 5;
else
echo -e "\n\n$red [$green✘$red]$red Tool Cannot Be Installed On Your System! Use It As Portable !$default";
    exit
fi
