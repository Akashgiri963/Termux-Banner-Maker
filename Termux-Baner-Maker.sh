#! /bin/bash

echo ""
echo "                 ______________________________________         "|lolcat
echo "        ________|                                      |_______ "|lolcat
echo "        \       |  WELCOME TO THE TERMUX BANER MAKER   |      / "|lolcat
echo "         \      |                                      |     /  "|lolcat
echo "         /      |______________________________________|     \  "|lolcat
echo "        /__________)                                (_________\ "|lolcat
echo ""
echo -e "\e[36m                                 Code By -> Akash Giri"

figlet -f big Termux Banner| lolcat

echo -e "\n\n\n\e[33mEnter The Text For LOGO : \e[32m\c"
read name

echo -e "\n\n\e[1m\e[33m\nWhat is Your Nick-Name : \e[32m\c"
read nickname

echo -e "\n\n\n\e[33mChoose the cowsay file : \e[32m\n"
echo -e "\e[33m1.Daemon         6.Kiss"
echo -e "2.Dragon               7.Milk"
echo -e "3.Dragen-and-cow       8.Stegosaurus"
echo -e "4.Eyes                 9.Turkey"
echo -e "5.Head-In              10.Turtle"
echo -e "\n\e[33mEnter you choice number : \e[32m\c"
read choice
echo -e "\nYou entered $choice\e[0m"

cd /data/data/com.termux/files/usr/etc

case $choice in
        1)echo "daemon selected"
          echo "cowsay -f daemon "$nickname"|lolcat" > nickname.txt
        ;;
        2)echo "dragon selected"
          echo "cowsay -f dragon "$nickname"|lolcat" > nickname.txt
        ;;
        3)echo "dragon-and-cow selected"
          echo "cowsay -f dragon-and-cow "$nickname"|lolcat" > nickname.txt
        ;;
        4)echo "eyes selected"
          echo "cowsay -f eyes "$nickname"|lolcat" > nickname.txt
        ;;
        5)echo "head-in selected"
          echo "cowsay -f head-in "$nickname"|lolcat" > nickname.txt
        ;;
        6)echo "kiss selected"
          echo "cowsay -f kiss "$nickname"|lolcat" > nickname.txt
        ;;
        7)echo "milk selected"
          echo "cowsay -f milk "$nickname"|lolcat" > nickname.txt
        ;;
        8)echo "stegosaurus selected"
          echo "cowsay -f stegosaurus "$nickname"|lolcat" > nickname.txt
        ;;
        9)echo "turkey selected"
          echo "cowsay -f turkey "$nickname"|lolcat" > nickname.txt
        ;;
        10)echo "turtle selected"
          echo "cowsay -f turtle "$nickname"|lolcat" > nickname.txt
        ;;
        *)echo -e "\nPlease choose number between 1 to 10";
esac

cd /data/data/com.termux/files/usr/etc

echo "clear" > clear.txt
echo "figlet -f slant "$name"|lolcat" > temp.txt
#echo "cowsay -f eyes "$nickname"|lolcat" > nickname.txt

cat clear.txt >> bash.bashrc
cat temp.txt >> bash.bashrc
cat nickname.txt >> bash.bashrc

echo ""

figlet -f slant "$text"|lolcat
cowsay -f eyes "$nickname"|lolcat
figlet -f small "Thank You"|lolcat
