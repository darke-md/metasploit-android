#!/bin/bash
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"
b='\033[1;34m'
p='\033[1;35m'
cd $HOME
echo -e "${RED}[*]${ENDCOLOR}${GREEN}installing........Wget${ENDCOLOR}"; pkg install wget -y &> /dev/null
echo -e "${RED}[*]${ENDCOLOR}${GREEN}installing........openssl Tool${ENDCOLOR}"; pkg install openssl-tool -y &> /dev/null
echo -e "${RED}[*]${ENDCOLOR}${GREEN}installing........Proot${ENDCOLOR}"; pkg install proot -y &> /dev/null
echo -e "${RED}[*]${ENDCOLOR}${GREEN}installing........Proot-Distro${ENDCOLOR}"; pkg install proot-distro -y &> /dev/null

echo     'Please Wait ===+[  ./                     ]\'
sleep 0.4
clear
echo   'Please Wait ===+[..\                    ]|'
sleep 0.4
clear
echo   'Please Wait ===+[.../                   ]/'
sleep 0.4
clear
echo   'Please Wait ===+[....\                  ]\'
sleep 0.4
clear
echo   'Please Wait ===+[...../                 ]|'
sleep 0.4
clear
echo   'Please Wait ===+[......./               ]/'
sleep 0.5
clear
echo     'Please Wait ===+[........\              ]|'
sleep 0.5
clear
echo     'Please Wait ===+[........../            ]\'
sleep 0.5
clear
echo     'Please Wait ===+[..........\            ]/'
sleep 0.5
clear
echo     'Please Wait ===+[............./         ]|'
sleep 0.6
clear
echo     'Please Wait ===+[..............\        ]/'
sleep 0.6
clear
echo     'Please Wait ===+[............./         ]\'
sleep 0.6
clear
echo     'Please Wait ===+[...............\       ]|'
sleep 0.5
clear
echo     'Please Wait ===+[................/      ]/'
sleep 0.4
clear
echo     'Please Wait ===+[.................\     ]\'
sleep 0.4
clear
echo     'Please Wait ===+[....................../]|'
sleep 0.9
clear
echo -e "${RED}___________INSTALLING UBUNTU${ENDCOLOR}${GREEN}[Just 100MB]___________${ENDCOLOR}"
proot-distro install ubuntu
sleep 10.40
clear
echo -e "${RED}______Starting_____${ENDCOLOR}"
echo "proot-distro login ubuntu" > ubuntu
sleep 0.2 
cp ubuntu /data/data/com.termux/files/usr/bin
sleep 0.2  
cd /data/data/com.termux/files/usr/bin
chmod +x ubuntu
sleep 0.5  
cd 
echo "------->[Ubuntu is starting]......."
sleep 8.50
proot-distro login ubuntu


