#!/bin/bash
# COLOR VALIDATION
clear
RED='\033[0;31m'
NC='\e[0m'
gray="\e[1;30m"
Blue="\033[1;36m"
GREEN='\033[0;32m'
grenbo="\033[1;95m"
YELL='\033[1;33m'
BGX="\033[42m"
UPDATE="https://raw.githubusercontent.com/sibeesans/main/up.sh"
BOT="https://raw.githubusercontent.com/sibeesans/bot/main/bot.sh"
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
clear
echo -e ""
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e " \e[1;971m                      MENU BOT                \e[0m"
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "  ${grenbo}[1]${NC}${YELL} Add Bot Notifikasi${NC}"
echo -e "  ${grenbo}[2]${NC}${YELL} Delete Bot Notifikasi${NC}"
echo -e ""
echo -e "  ${grenbo}[0]${NC}${YELL} Back To Menu${NC}"
echo -e ""
read -p "  Select From Options [ 1 - 2 or 0 ] : " menu
case $menu in
1) clear ;
    add-bot-notif
    ;;
2) clear ;
    del-bot-notif
    ;;
0) clear ;
    menu
    ;;
*) clear ;
    menu
    ;;
esac
