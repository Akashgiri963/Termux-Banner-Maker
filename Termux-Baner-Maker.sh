#! /bin/bash

echo ""
echo "                 ______________________________________         "|lolc>
echo "        ________|                                      |_______ "|lolc>
echo "        \       |  WELCOME TO THE TERMUX BANER MAKER   |      / "|lolc>
echo "         \      |                                      |     /  "|lolc>
echo "         /      |______________________________________|     \  "|lolc>
echo "        /__________)                                (_________\ "|lolc>
echo ""

figlet -f big Termux Banner| lolcat

echo -e "\n\n\n\e[33mEnter The Text For LOGO : \e[32m\c"
read text

echo -e "\n\n\e[1m\e[33m\nWhat is Your Nick-Name : \e[32m\c"
read name

cd /data/data/com.termux/files/usr/etc

echo "clear" > clear.txt
echo "figlet -f slant "$text"|lolcat" > temp.txt
echo "cowsay -f stegosaurus "$name"|lolcat" > name.txt

cat clear.txt >> bash.bashrc
cat temp.txt >> bash.bashrc
cat name.txt >> bash.bashrc

echo ""

figlet -f slant "$text"|lolcat
cowsay -f stegosaurus "$name"|lolcat
figlet -f small "Thank You"|lolcat
