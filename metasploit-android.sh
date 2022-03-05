#!/bin/bash
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"
echo -e "${RED}[!]${ENDCOLOR}${GREEN}installing........Wget${ENDCOLOR}"; pkg install wget -y &> /dev/null
echo -e "${RED}installing........OpenSsl Tool${ENDCOLOR}"; pkg install openssl-tool -y &> /dev/null
echo -e "${RED}[!]${ENDCOLOR}${GREEN}installing........Proot${ENDCOLOR}"; pkg install proot -y &> /dev/null
hash -r
echo -e "${GREEN}[!]${ENDCOLOR}${RED}Installing Kali Linux...${ENDCOLOR}"; wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh &> /dev/null
echo -e "${GREEN}[!]${ENDCOLOR}${RED}Downloading...Rootfs${ENDCOLOR}";
cd $HOME
bash kali.sh
bash start-kali.sh



