#!/bin/bash
function checking_sc() {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/scriswan/premiumsc/main/register | awk '{print $4}')

    if echo "$IZIN" | grep -wq "$MYIP"; then
        echo "Izinnya Di Terima Beb"
    else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6283867809137"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
        exit 1  # Exit with non-zero status to indicate failure // Lunatix
    fi
}

checking_sc




MYIP=$(curl -sS ipv4.icanhazip.com)

#install
cp /media/cybervpn/var.txt /tmp
cp /root/cybervpn/var.txt /tmp
rm -rf cybervpn
apt update && apt upgrade -y
apt install python3 python3-pip -y
apt install sqlite3 -y
cd /media/
rm -rf cybervpn
wget https://raw.githubusercontent.com/Lite-VPN/v3/main/botku/cybervpn.zip
unzip cybervpn.zip
cd cybervpn
rm var.txt
rm database.db
pip3 install -r requirements.txt
pip install pillow
pip install speedtest-cli
pip3 install aiohttp
pip3 install paramiko
clear
rm -rf bot
rm bot.*
cd /usr/bin
wget https://raw.githubusercontent.com/Lite-VPN/v3/main/botku/bot.zip
unzip bot.zip
mv bot/* /usr/bin
chmod +x /usr/bin/*
rm -rf bot.zip
#isi data
nsdom=$(cat /root/nsdomain)
domain=$(cat /etc/xray/domain)
clear
clear
echo
echo -e "\033[97m◇━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━◇\033[0m"
echo -e " \033[1;97;41m          ADD BOT CYBERVPN         \033[0m"
echo -e "\033[97m◇━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━◇\033[0m"
read -e -p "Masukkan Bot Token: " token
read -e -p "Masukkan ID Telegram :" admin

echo "$token" > /root/.notifbot
echo "$admin" >> /root/.notifbot

cat > /media/cybervpn/var.txt << END
ADMIN="$admin"
BOT_TOKEN="$token"
DOMAIN="$domain"
DNS="$nsdom"
PUB="7fbd1f8aa0abfe15a7903e837f78aba39cf61d36f183bd604daa2fe4ef3b7b59"
OWN="$user"
SALDO="100000"
END


clear
echo "Done"
echo "Your Data Bot"
echo -e "==============================="
echo "Api Token     : $token"
echo "ID            : $admin"
echo "DOMAIN        : $domain"
echo -e "==============================="
echo "Setting done"


rm -f /usr/bin/nenen

echo -e '#!/bin/bash\ncd /media/\npython3 -m cybervpn' > /usr/bin/nenen


chmod 777 /usr/bin/nenen

cat > /etc/systemd/system/cybervpn.service << END
[Unit]
Description=Simple CyberVPN - @CyberVPN
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/nenen
Restart=always

[Install]
WantedBy=multi-user.target

END
systemctl daemon-reload
systemctl start cybervpn
systemctl enable cybervpn
clear

echo -e " \033[1;97;41m     MENDOWNLOAD ASSET TAMBAHAN......    \033[0m"



wget -q -O /media/log-install.txt "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/log-install.txt"



wget -q -O /usr/bin/addnoobz "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/addnoobz.sh" && chmod +x /usr/bin/addnoobz






wget -q -O /usr/bin/add-vless "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/add-vless.sh" && chmod +x /usr/bin/add-vless

wget -q -O /usr/bin/addtr "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/addtr.sh" && chmod +x /usr/bin/addtr


wget -q -O /usr/bin/addws "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/addws.sh" && chmod +x /usr/bin/addws


wget -q -O /usr/bin/addss "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/addss.sh" && chmod +x /usr/bin/addss

wget -q -O /usr/bin/cek-ssh "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/cek-ssh.sh" && chmod +x /usr/bin/cek-ssh



wget -q -O /usr/bin/cek-ss "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/cek-ss.sh" && chmod +x /usr/bin/cek-ss




wget -q -O /usr/bin/cek-tr "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/cek-tr.sh" && chmod +x /usr/bin/cek-tr

wget -q -O /usr/bin/cek-vless "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/cek-vless.sh" && chmod +x /usr/bin/cek-vless

wget -q -O /usr/bin/cek-ws "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/cek-ws.sh" && chmod +x /usr/bin/cek-ws

wget -q -O /usr/bin/del-vless "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/del-vless.sh" && chmod +x /usr/bin/del-vless




wget -q -O /usr/bin/cek-noobz "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/cek-noobz.sh" && chmod +x /usr/bin/cek-noobz



wget -q -O /usr/bin/deltr "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/deltr.sh" && chmod +x /usr/bin/deltr

wget -q -O /usr/bin/delws "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/delws.sh" && chmod +x /usr/bin/delws



wget -q -O /usr/bin/delss "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/delss.sh" && chmod +x /usr/bin/delss



wget -q -O /usr/bin/renew-ss "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/renew-ss.sh" && chmod +x /usr/bin/renew-ss


wget -q -O /usr/bin/renewtr "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/renewtr.sh" && chmod +x /usr/bin/renewtr


wget -q -O /usr/bin/renewvless "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/renewvless.sh" && chmod +x /usr/bin/renewvless


wget -q -O /usr/bin/renewws "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/renewws.sh" && chmod +x /usr/bin/renewws


wget -q -O /usr/bin/cek-mws "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/cek-mws.sh" && chmod +x /usr/bin/cek-mws

wget -q -O /usr/bin/cek-mvs "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/cek-mvs.sh" && chmod +x /usr/bin/cek-mvs


wget -q -O /usr/bin/cek-mss "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/cek-mss.sh" && chmod +x /usr/bin/cek-mss



wget -q -O /usr/bin/cek-mts "https://raw.githubusercontent.com/Lite-VPN/v3/main/ping/cek-mts.sh" && chmod +x /usr/bin/cek-mts

clear
cp /tmp/var.txt /media/cybervpn
rm -rf bot.sh
rm -rf bot.sh.1
clear
clear
echo -e "\033[97m◇━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━◇\033[0m"
echo -e " \033[1;97;41m          BOT BERHASIL DI PASANG      \033[0m"
echo -e "\033[97m◇━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━◇\033[0m"

rm /media/cybervpn.zip
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu
