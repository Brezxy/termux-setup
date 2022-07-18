#!/usr/bin/bash

#warna
default="\033[00m"
merah="\033[31m"
hijau="\033[32m"
kuning="\033[33m"
biru="\033[34m"
birumuda="\033[35m"
ungu="\033[36m"
putih="\033[37m"

menu() {
clear
    echo -e -n $hijau;figlet "Termux-Setup"
    echo -e $merah"belajar program bash di termux"
    echo -e $kuning"1."$ungu" install bahan"
    echo -e $kuning"2."$birumuda" keluar"
    mainmenu
}

mainmenu() {
    echo -e -n "pilih > ";read pil
    if [ $pil == "1" ];then
    pkg up -y
    pkg install nodejs -y
    pkg install python -y
    pkg install python2 -y
    pkg install figlet -y
    pkg install ruby -y
    gem install lolcat
    pkg install php -y
    pkg install curl -y
    pkg install nano 
    pkg install toilet -y
    pkg install wget -y
    pip install requests 
    pip requests mechanize bs4
    pip2 install requests
    pip2 install mechanize bs4
    echo "[+] program berhasil di Install"
    elif [ $pil == "2" ];then
    echo "[!] Berhasil Keluar"
    exit
    else
    echo "[!] input salah"
    fi
}

menu
