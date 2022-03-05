#!/bin/bash
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"
cd $HOME
echo -e "${RED}[!]${ENDCOLOR}${GREEN}installing........Wget${ENDCOLOR}"; pkg install wget -y &> /dev/null
echo -e "${RED}installing........OpenSsl Tool${ENDCOLOR}"; pkg install openssl-tool -y &> /dev/null
echo -e "${RED}[!]${ENDCOLOR}${GREEN}installing........Proot${ENDCOLOR}"; pkg install proot -y &> /dev/null
hash -r
echo -e "${GREEN}[!]${ENDCOLOR}${RED}Installing Kali Linux...${ENDCOLOR}"; wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh &> /dev/null
echo -e "${GREEN}[!]${ENDCOLOR}${RED}Downloading...Rootfs${ENDCOLOR}"; 
cd $HOME
bash kali.sh
echo "bash start-kali.sh" > kali
mv kali /data/data/com.termux/files/usr/bin
cd data/data/com.termux/files/usr/bin
chmod +x kali
cd $HOME
echo "Making it easier to start kali linux"
echo "Start kali-linux by typing 'kali'"


