#!/bin/bash
Green="\e[92;1m"
RED="\033[31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
OK="${Green}--->${FONT}"
ERROR="${RED}[ERROR]${FONT}"
GRAY="\e[1;30m"
NC='\e[0m'
red='\e[1;31m'
green='\e[0;32m'
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
grenbo="\e[92;1m"
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
# Getting
AKUN="AKUN SSH"
TIMES="10"
CHATID="5795571992"
KEY="6079069898:AAGT8hggC62cVoeKq1Q1k37sWj2Bys5NL1M"
URL="https://api.telegram.org/bot$KEY/sendMessage"
hariini=`date -d "0 days" +"%Y-%m-%d"`
clear
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script
clear
source /var/lib/kyt/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
#tr="$(cat ~/log-install.txt | grep -w "Trojan WS " | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
echo -e "\033[1;93m◇━━━━━━━━━━━━━━━━━◇\033[0m"
echo -e " CREATE TROJAN ACCOUNT          "
echo -e "\033[1;93m◇━━━━━━━━━━━━━━━━━◇\033[0m"

		read -rp "User: " -e user
		user_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

		if [[ ${user_EXISTS} == '1' ]]; then
clear
    echo -e "\033[1;93m◇━━━━━━━━━━━━━━━━━◇\033[0m"
    echo -e " CREATE TROJAN ACCOUNT          "
    echo -e "\033[1;93m◇━━━━━━━━━━━━━━━━━◇\033[0m"
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			echo ""
			echo -e "\033[0;34m◇━━━━━━━━━━━━━━━━━◇\033[0m"
			read -n 1 -s -r -p "Press any key to back on menu"
			menu-trojan
		fi
	done

uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (days): " masaaktif
read -p "Limit User (GB): " Quota
tgl=$(date -d "$masaaktif days" +"%d")
bln=$(date -d "$masaaktif days" +"%b")
thn=$(date -d "$masaaktif days" +"%Y")
expe="$tgl $bln, $thn"
tgl2=$(date +"%d")
bln2=$(date +"%b")
thn2=$(date +"%Y")
tnggl="$tgl2 $bln2, $thn2"
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#trojanws$/a\#tr# '"$user $exp"'\
},{"password": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#trojangrpc$/a\#tr# '"$user $exp"'\
},{"password": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json

# Link Trojan Akun
systemctl restart xray
trojanlink1="trojan://${uuid}@${domain}:443?mode=gun&security=tls&type=grpc&serviceName=trojan-grpc&sni=bug.com#${user}"
trojanlink="trojan://${uuid}@bugkamu.com:443?path=%2Ftrojan-ws&security=tls&host=${domain}&type=ws&sni=${domain}#${user}"

cat >/var/www/html/trojan-$user.txt <<-END
◇━━━━━━━━━━━━━━━━━◇
  A S U W  P R O J E C T 
◇━━━━━━━━━━━━━━━━━◇

# Format Trojan GO/WS

- name: Trojan-$user-GO/WS
  server: ${domain}
  port: 443
  type: trojan
  password: ${uuid}
  network: ws
  sni: ${domain}
  skip-cert-verify: true
  udp: true
  ws-opts:
    path: /trojan-ws
    headers:
        Host: ${domain}

# Format Trojan gRPC

- name: Trojan-$user-gRPC
  type: trojan
  server: ${domain}
  port: 443
  password: ${uuid}
  udp: true
  sni: ${domain}
  skip-cert-verify: true
  network: grpc
  grpc-opts:
    grpc-service-name: trojan-grpc
END

TEXT="
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code>Link Akun Trojan </code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code>Link WS          : </code>
<code>${trojanlink}</code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code>Link GRPC        : </code>
<code>${trojanlink1}</code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
"



systemctl reload xray
systemctl reload nginx
service cron restart
trojanlink="trojan://${uuid}@${domain}:443?path=%2Ftrojan-ws&security=tls&host=${domain}&type=ws&sni=${domain}#${user}"
trojanlink1="trojan://${uuid}@${domain}:443?mode=gun&security=tls&type=grpc&serviceName=trojan-grpc&sni=${domain}#${user}"
if [ ! -e /etc/trojan ]; then
  mkdir -p /etc/trojan
fi

if [ -z ${Quota} ]; then
  Quota="0"
fi

c=$(echo "${Quota}" | sed 's/[^0-9]*//g')
d=$((${c} * 1024 * 1024 * 1024))

if [[ ${c} != "0" ]]; then
  echo "${d}" >/etc/trojan/${user}
fi
DATADB=$(cat /etc/trojan/.trojan.db | grep "^#tr#" | grep -w "${user}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${user}\b/d" /etc/trojan/.trojan.db
fi
echo "#tr# ${user} ${exp} ${uuid} ${Quota}" >>/etc/trojan/.trojan.db
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL
clear
echo -e "\e[33m◇━━━━━━━━━━━━━━━━━◇\033[0m"
echo -e "Xray TROJAN ACCOUNT          \E[0m"
echo -e "\e[33m◇━━━━━━━━━━━━━━━━━◇\033[0m"
echo -e "Remarks      : ${user}"
echo -e "Host         : ${domain}"
echo -e "Port         : 443/80"
echo -e "Key          : ${uuid}"
echo -e "Path         : /trojan-ws"
echo -e "ServiceName  : trojan-grpc"
echo -e "\e[33m◇━━━━━━━━━━━━━━━━━◇\033[0m"
echo -e "Link WS      : ${trojanlink}"
echo -e "\e[33m◇━━━━━━━━━━━━━━━━━◇\033[0m"
echo -e "Link GRPC    : ${trojanlink1}"
echo -e "\e[33m◇━━━━━━━━━━━━━━━━━◇\033[0m"
echo -e "Format OpenClash : https://${domain}:81/trojan-$user.txt"
echo -e "\e[33m◇━━━━━━━━━━━━━━━━━◇\033[0m"
echo -e "Expired Until: $expe"
echo -e "\e[33m◇━━━━━━━━━━━━━━━━━◇\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
