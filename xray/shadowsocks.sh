#!/bin/bash
clear
clear
grenbo="\e[92;1m"
NC='\033[0m'
echo -e "${BICyan} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "       ${BIWhite}${UWhite}SHADOWSOCKS MENU ${NC}"
echo -e ""
echo -e "     ${BICyan}1. ${BIYellow}Create Account Shadowsocks "
echo -e "     ${BICyan}2. ${BIYellow}Trial Account Shadowsocks     "
echo -e "     ${BICyan}3. ${BIYellow}Extending Account Shadowsocks Active "
echo -e "     ${BICyan}4. ${BIYellow}Delete Account Shadowsocks  "
echo -e "     ${BICyan}5. ${BIYellow}Check User Login Shadowsocks     "
echo -e "     ${BICyan}6. ${BIYellow}Usage Shadowsocks Account     "

echo -e " ${BICyan}└─────────────────────────────────────────────────────┘${NC}"
echo -e ""
read -p "Select From Options [ 1 - 6 or 0 ] : " menu
case $menu in
1)
    add-ss
    ;;
2) 
    triall-ss
    ;;

3)
    del-ss
    ;;
4)
    renew-ss
    ;;
5)
    cek-ss
    ;;
6)
    usage-akun-xray-ss
    ;;
0)
    menu
    ;;
*)
    menu
    ;;
esac
