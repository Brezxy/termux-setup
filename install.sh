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
    pkg update && pkg upgrade -y
    pkg install git -y
    pkg install nodejs -y
    pkg install python python2 -y
    pkg install ruby figlet -y
    gem install lolcat
    pkg install php nano toilet wget -y
    pip install requests mechanize bs4
    pip2 install requests mechanize bs4
    echo "(+) program berhasil di Install"
    elif [ $pil == "2" ];then
    echo "[!] Berhasil Keluar"
    exit
    else
    echo "[!] input salah"
    fi
}

menu
