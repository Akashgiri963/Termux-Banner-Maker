#! /bin/bash

function banner(){
figlet -f big Termux Banner| lolcat
#echo -e "\n"
echo "                 ______________________________________         "|lolcat
echo "        ________|                                      |_______ "|lolcat
echo "        \       |  WELCOME TO THE TERMUX-BANNER-MAKER  |      / "|lolcat
echo "         \      |                                      |     /  "|lolcat
echo "         /      |______________________________________|     \  "|lolcat
echo "        /__________)                                (_________\ "|lolcat
echo ""
echo -e "\e[1;36m                        Coded By -> Akash Giri\n"
echo -e "\e[1;35m                             Version - 2.0"
}

function createBanner(){
echo -e "\n\n\n\e[33mEnter The Text For LOGO : \e[32m\c"
read name

echo -e "\n\n\e[1m\e[33m\nWhat is Your Nick-Name : \e[32m\c"
read nickname

echo -e "\n\n\n\e[33mChoose the cowsay file -
+-----------------------------------------------------------------------+
	1.Daemon               	6.Kiss
	2.Dragon               	7.Milk
	3.Dragen-and-cow       	8.Stegosaurus
	4.Eyes                 	9.Turkey
	5.Head-In              	10.Turtle
+-----------------------------------------------------------------------+
\033[0m";

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
        *)echo -e "\nPlease choose number between 1 to 10";;
esac

echo "clear" > clear.txt
echo "figlet -f slant "$name"|lolcat" > temp.txt

cat clear.txt >> bash.bashrc
cat temp.txt >> bash.bashrc
cat nickname.txt >> bash.bashrc

echo ""

figlet -f slant "$text"|lolcat
cowsay -f eyes "$nickname"|lolcat

}

function removeBanner(){

cd /data/data/com.termux/files/usr/etc

echo -e "\n\n\n\e[33mRemove Banner Menu :-
+-----------------------------------------------------------------------+
        1.Remove last banner only
        2.Remove all banners
        3.Cancel
+-----------------------------------------------------------------------+
\033[0m";
echo -e "\n\e[33mEnter choice number : \e[32m\c"
read ch

echo -e "\nYou choose $ch\e[0m\n"
case $ch in
	1)truncate -s $(head -n -3 bash.bashrc | wc -c) bash.bashrc
	  echo -e "\n\e[32mLast banner deleted successfully...\e[0m\n"
	;;
	2)restore;;
	3)echo -e "\n\e[32mThank you for Using\e[0m\n
	  figlet -f small "Thank You"|lolcat;"
	  exit
	;;
	*)echo -e "\nInvalid Option";;
esac

}

function backupAndRestore(){

echo -e "\n\n\n\e[33mBackup And Restore Menu :-
+-----------------------------------------------------------------------+
        1.Backup
        2.Restore
        3.Cancel
+-----------------------------------------------------------------------+
\033[0m";
echo -e "\n\e[33mEnter choice number : \e[32m\c"
read bar

echo -e "\nYou choose $ch\e[0m\n"
case $bar in
        1)backup;;
        2)restore;;
        3)echo -e "\n\e[32mThank you for Using\e[0m\n"
	  figlet -f small "Thank You"|lolcat;
          exit
        ;;
        *)echo -e "\nInvalid Option";;
esac

}

function backup(){
	filename=Backup
	cd /data/data/com.termux/files/usr/etc
        if [ -d "$filename" ]
	then
		echo ""
	else
		mkdir Backup
	fi
        cp bash.bashrc /data/data/com.termux/files/usr/etc/Backup
}

function restore(){
	mv /data/data/com.termux/files/usr/etc/Backup/bash.bashrc /data/data/com.termux/files/usr/etc
        echo -e "\n\e[32mRestored Successfully..."
        echo -e "\nRestart your termux\e[0m\n"
	backup
}

function update(){
      	cd /data/data/com.termux/files/usr/share/Termux-Banner-Maker
	bash update.sh
}

function mainMenu(){

echo -e "\n\n\n\e[33mWhat do you want to perform :-
+-----------------------------------------------------------------------+
	1.Create Banner
	2.Remove Banner
	3.Backup & Restore
	4.Update
	5.Exit
+-----------------------------------------------------------------------+
\033[0m";

echo -e "\n\e[33mEnter choice number : \e[32m\c"
read opt

echo -e "\nProcessing...\e[0m"

case $opt in
        1)createBanner;;
        2)removeBanner;;
	3)backupAndRestore;;
	4)update;;
	5)figlet -f small "Thank You"|lolcat;
	  exit
	;;
	*)echo -e "\nInvalid Option";;
esac
}
n=0
while(( "$n"<1 ))
do
banner
mainMenu
done
