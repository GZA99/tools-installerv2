#!/bin/bash
#version 1.0

# Variables
b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'
blue='\e[1;34m'
cyan='\e[1;36m'
red='\e[1;31m'

figlet Tools | lolcat

echo -e $blue"_____________________________________"
echo -e $g"EMAIL"$w"="$c"ghali.zul.08@gmail.com"
echo -e $g"AUTHOR"$w"="$c"GZA99"
echo -e $g"GITHUB"$w"="$c"GZA99"
echo -e $blue"_____________________________________"

###################################################
# CTRL + C
###################################################
trap ctrl_c INT
ctrl_c() {
clear
echo -e $red"[#]> (Ctrl + C ) Detected, Trying To Exit ... "
echo -e $cyan"[#]> Thanks"
sleep 1
echo ""
echo -e $white"[#]> see you gaes :)..."
sleep 1
exit
}

lagi=1
while [ $lagi -lt 6 ];
do
echo ""
echo -e $b "1. nmap${enda}";
echo -e "========================="
echo -e $c "2. RED_HAWK${endc}";
echo -e "========================="
echo -e $g "3. hammer${endc}";
echo -e "========================="
echo -e $c "4. admin-finder${endc}";
echo -e "========================="
echo -e $r "5. Tool-X${endc}";
echo -e "========================="
echo -e $r "6. exit${endc}";
echo ""
echo -e "╭─GZA99" |lolcat
read -p "╰─#" pil;

# nmap

case $pil in
1) pkg install nmap
echo -e  "${y} {1} Masukkan Web${endc}:"
read web
nmap $web
echo

;;

# RED_HAWK

2) git clone https://github.com/Tuhinshubhra/RED_HAWK
echo -e "${y} Installer RED_HAWK..."
echo -e "${y} cd RED_HAWK"
echo -e "${y} php RED_HAWK.php"
cd RED_HAWK
pkg install PHP -y
php rhawk.php

;;

# hammer

3) pkg install python2 -y
git clone http://github.com/cyweb/hammer
pkg install w3m -y
pkg install python
cd hammer
echo -e "________________________________________"
echo -e "lihat tutor menggunakan hammer di bawah"
echo -e "setelah melihat tutornya tekan ls"
echo -e "________________________________________"
sleep 10
w3m https://amarnehwoy.blogspot.com/2018/01/assalammualaikum-wr-wb-selamat-pagi.html?m=1

;;

# admin-finder

4) git clone https://github.com/the-c0d3r/admin-finder.git
echo -e "${y} cara menggunakan admin finder"
echo -e "${y} cd admin-finder"
echo -e "${y} python admin-finder.py"
cd admin-finder
python2 admin-finder.py
echo

;;

# Tool-X

5) git clone https://github.com/Rajkumrdusad/Tool-X
echo -e "${y} Installer Tool-X..."
echo -e "${y} cd Tool-X"
echo -e "${y} sh install.aex"
cd Tool-X
sh install.aex

;;


6) figlet -c "AUTHOR" | lolcat
sleep 2
figlet -c "V" | lolcat
sleep 2
figlet -c "GZA99" | lolcat
sleep 1
echo -e "FOLLOW MY GITHUB = GZA99" | lolcat
sleep 1
figlet -c "BYE KAWAN"
exit
;;

*) echo -e $red"["$w"+"$red"]"$w"PILIHAN TIDAK TERDETEKSI"$red"["$w"+"$red"]"
esac
done
done

