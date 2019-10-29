#! /bin/bash

echo -e "\n\n\nWelcome to the Termux-Baner-Maker Window"
echo "                          Code By : Akash Giri   "
echo -e "\n\n\nEnter the text for LOGO : \c"
read text

cd /data/data/com.termux/files/usr/etc

echo "clear" > clear.txt
echo "figlet -f slant "$text"|lolcat" > temp.txt

cat clear.txt >> bash.bashrc
cat temp.txt >> bash.bashrc
