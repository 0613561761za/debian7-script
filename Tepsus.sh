#!/bin/bash
# ========= Scrip กากๆ By Tepsus =========
# Program: ออโต้ด้วยนะไอ้สัส VPS 
# ต้นฉบับ: Original script by fornesia, rzengineer and fawzya
# กูก้อปต่อจาก >> kguza baba
# ทำเเต่เซิพไอ้สัสเมียมึงมีชู้เเล้ว ควย
# By Tepsus
# สำหรับ: Debian 7-8 x32-64 นะไอ้สัส
# ============================================

# initialisasi var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP2="s/xxxxxxxxx/$MYIP/g";
echo "cd" >> .bashrc
echo "sudo su" >> .bashrc

# go to root
cd

# Install Command
apt-get -y install ufw
apt-get -y install sudo

# disable ipv6
echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
sed -i '$ i\echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6' /etc/rc.local

# install wget and curl
apt-get update;apt-get -y install wget curl;

# set time GMT +7
ln -fs /usr/share/zoneinfo/Asia/thailand /etc/localtime

# set locale
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config
service ssh restart

# set repo
wget -O /etc/apt/sources.list "https://scrip.000webhostapp.com/DEBIAN-8-THREE-IN-ONE/sources.list.debian8"
wget "https://scrip.000webhostapp.com/DEBIAN-8-THREE-IN-ONE/dotdeb.gpg"
wget "https://scrip.000webhostapp.com/DEBIAN-8-THREE-IN-ONE/jcameron-key.asc"
cat dotdeb.gpg | apt-key add -;rm dotdeb.gpg
cat jcameron-key.asc | apt-key add -;rm jcameron-key.asc

# update
apt-get update

# install webserver
apt-get -y install nginx

# install essential package
apt-get -y install nano iptables dnsutils openvpn screen whois ngrep unzip unrar

# Install Pritunl
echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.2 main" > /etc/apt/sources.list.d/mongodb-org-3.2.list
echo "deb http://repo.pritunl.com/stable/apt jessie main" > /etc/apt/sources.list.d/pritunl.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv EA312927
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv CF8E292A
apt-get -y update
apt-get -y upgrade
apt-get -y install pritunl mongodb-org
systemctl start mongod pritunl
systemctl enable mongod pritunl

echo "clear" >> .bashrc
echo 'echo -e " ================================="' >> .bashrc
echo 'echo -e " Script กากๆ By Tepsus" >> .bashrc
echo 'echo -e " «««««««««««««««««»»»»»»»»»»»»»»»»"' >> .bashrc
echo 'echo -e " จะใช้คำสั่งกด > menu < Enter" >> .bashrc
echo 'echo -e " «««««««««««««««»»»»»»»»»»»»»»"' >> .bashrc
echo 'echo -e ""' >> .bashrc

# install webserver
apt-get -y install nginx php5-fpm php5-cli
cd
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
wget -O /etc/nginx/nginx.conf "https://scrip.000webhostapp.com/DEBIAN-8-THREE-IN-ONE/nginx.conf"
mkdir -p /home/vps/public_html
echo " <div id='intro'>
	<table border='2'  background='#A100FF'>
    <center>
     <b>
          <FONT COLOR='#FF0000' size='10'>A</FONT>
          <FONT COLOR='#FF9900' size='10'>p</FONT>
          <FONT COLOR='#FF0099' size='10'>p</FONT>
          <FONT COLOR='#99FF00' size='10'>O</FONT>
          <FONT COLOR='#00FF00' size='10'>p</FONT>
          <FONT COLOR='#00FF99' size='10'>e</FONT>
          <FONT COLOR='#00FFFF' size='10'>n</FONT>
          <FONT COLOR='#0099FF' size='10'>V</FONT>
          <FONT COLOR='#0000FF' size='10'>P</FONT>
          <FONT COLOR='#9900FF' size='10'>N</FONT>
          <FONT COLOR='#FFFFFF' size='10'>-</FONT>
          <FONT COLOR='#FF00FF' size='10'>P</FONT>
          <FONT COLOR='#FF0099' size='10'>R</FONT>
          <FONT COLOR='#FF0099' size='10'>O</FONT>
     </b>
</center>
<FONT COLOR='#FFFFFF' size='1'>-</FONT>
<center>
                <tr>
                        <td>
                                <marquee behavior='alternate'>
                                        <img border='0' src='https://scrip.000webhostapp.com/Seller/20171005_130801_rmscr.jpg' height='1000' width='600'></a>
                                        <img border='0' src='https://scrip.000webhostapp.com/Seller/20171005_130827_rmscr.jpg' height='1000' width='600'></a>
                                        <img border='0' src='https://scrip.000webhostapp.com/Seller/20171005_130840_rmscr.jpg' height='1000' width='600'></a>
                                        <img border='0' src='https://scrip.000webhostapp.com/Seller/20171005_130848_rmscr.jpg' height='1000' width='600'></a>
                                        <img border='0' src='https://scrip.000webhostapp.com/Seller/20171005_130855_rmscr.jpg' height='1000' width='600'></a>
                                </marquee>
                        </td>
                </tr>
</center>
</table>
<FONT COLOR='#FFFFFF' size='1'>-</FONT><FONT SIZE=30><B>
<li>Download SUPERVPN <a href><a href='https://www.mediafire.com/file/ksalmh3887qiltq/SUPERVPN+00.00.03.apk'>Click</FONT></a href></li>
<FONT SIZE=30><B>
<li>interested contact<a href><a href='http://line.me/ti/p/Dh6o2a5Ar9'>Click </FONT></a href></li>
<h1><font><font color='#ffffff'>~</font></h1>
<FONT SIZE=30><B><U>
<marquee width='50%'>Rental service VPN</marquee></FONT></B></U>
<lu>
<h1><li>Rental service VPN</li></h1>
<h1><li>Available both ssh and openvpn</li></h1>
<h1><li>service charge50Bat / month </li></h1>
</ul>
<h1><font><font color='#ffffff'>~</font></h1>
<FONT SIZE=30><B><U>
<marquee width='50%'>VPS Run service</marquee></FONT></B></U>
<h1><li>debain 7 - 8</li></h1>
<h1><li>ubuntu 14</li></h1>
<h1><li>service charge50Bat / 1server</li></h1>
<FONT COLOR='#FFFFFF' size='3'>-</FONT>
<marquee behavior='alternate'>
<FONT COLOR='#0099FF' size='10'>T</FONT>
<FONT COLOR='#FFFFFF' size='10'>-</FONT>
<FONT COLOR='#0000FF' size='10'>H</FONT>
<FONT COLOR='#FFFFFF' size='10'>-</FONT>
<FONT COLOR='#9900FF' size='10'>A</FONT>
<FONT COLOR='#FFFFFF' size='10'>-</FONT>
<FONT COLOR='#FF00FF' size='10'>N</FONT>
<FONT COLOR='#FFFFFF' size='10'>-</FONT>
<FONT COLOR='#FF0099' size='10'>K</FONT>
<FONT COLOR='#FFFFFF' size='10'>-----</FONT>
<FONT COLOR='#0000FF' size='10'>Y</FONT>
<FONT COLOR='#FFFFFF' size='10'>-</FONT>
<FONT COLOR='#9900FF' size='10'>O</FONT>
<FONT COLOR='#FFFFFF' size='10'>-</FONT>
<FONT COLOR='#FF0099' size='10'>U</FONT>
</marquee>
 </div>" > /home/vps/public_html/kguza.html
echo "<?php phpinfo(); ?>" > /home/vps/public_html/info.php
wget -O /etc/nginx/conf.d/vps.conf "https://scrip.000webhostapp.com/DEBIAN-8-THREE-IN-ONE/vps.conf"
sed -i 's/listen = \/var\/run\/php5-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php5/fpm/pool.d/www.conf
service php5-fpm restart
service nginx restart

# Install Vnstat
apt-get -y install vnstat
vnstat -u -i eth0
sudo chown -R vnstat:vnstat /var/lib/vnstat
service vnstat restart

# Install Vnstat GUI
cd /home/vps/public_html/
wget http://www.sqweek.com/sqweek/files/vnstat_php_frontend-1.5.1.tar.gz
tar xf vnstat_php_frontend-1.5.1.tar.gz
rm vnstat_php_frontend-1.5.1.tar.gz
mv vnstat_php_frontend-1.5.1 vnstat
cd vnstat
sed -i "s/\$iface_list = array('eth0', 'sixxs');/\$iface_list = array('eth0');/g" config.php
sed -i "s/\$language = 'nl';/\$language = 'en';/g" config.php
sed -i 's/Internal/Internet/g' config.php
sed -i '/SixXS IPv6/d' config.php
cd

# install openvpn
wget -O /etc/openvpn/openvpn.tar "https://scrip.000webhostapp.com/DEBIAN-8-THREE-IN-ONE/openvpn-debian.tar"
cd /etc/openvpn/
tar xf openvpn.tar
wget -O /etc/openvpn/1194.conf "https://scrip.000webhostapp.com/DEBIAN-8-THREE-IN-ONE/1194.conf"
service openvpn restart
sysctl -w net.ipv4.ip_forward=1
sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g' /etc/sysctl.conf
iptables -t nat -I POSTROUTING -s 192.168.100.0/24 -o eth0 -j MASQUERADE
iptables-save > /etc/iptables_yg_baru_dibikin.conf
wget -O /etc/network/if-up.d/iptables "https://scrip.000webhostapp.com/DEBIAN-8-THREE-IN-ONE/iptables"
chmod +x /etc/network/if-up.d/iptables
service openvpn restart

# config openvpn
cd /etc/openvpn/
wget -O /etc/openvpn/True-DtacProline.ovpn "https://scrip.000webhostapp.com/DEBIAN-8-THREE-IN-ONE/client-1194.conf"
sed -i $MYIP2 /etc/openvpn/True-DtacProline.ovpn;
cp True-DtacProline.ovpn /home/vps/public_html/

# install badvpn
cd
wget -O /usr/bin/badvpn-udpgw "https://scrip.000webhostapp.com/DEBIAN-8-THREE-IN-ONE/badvpn-udpgw"
if [ "$OS" == "x86_64" ]; then
  wget -O /usr/bin/badvpn-udpgw "https://scrip.000webhostapp.com/DEBIAN-8-THREE-IN-ONE/badvpn-udpgw64"
fi
sed -i '$ i\screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300' /etc/rc.local
chmod +x /usr/bin/badvpn-udpgw
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300

# setting port ssh
cd
sed -i 's/Port 22/Port 22/g' /etc/ssh/sshd_config
sed -i '/Port 22/a Port 143' /etc/ssh/sshd_config
service ssh restart

# install dropbear
apt-get -y install dropbear
sed -i 's/NO_START=1/NO_START=0/g' /etc/default/dropbear
sed -i 's/DROPBEAR_PORT=22/DROPBEAR_PORT=443/g' /etc/default/dropbear
sed -i 's/DROPBEAR_EXTRA_ARGS=/DROPBEAR_EXTRA_ARGS="-p 443 -p 80"/g' /etc/default/dropbear
echo "/bin/false" >> /etc/shells
echo "/usr/sbin/nologin" >> /etc/shells
service ssh restart
service dropbear restart

# Install Squid
apt-get -y install squid3
cp /etc/squid3/squid.conf /etc/squid3/squid.conf.orig
wget -O /etc/squid3/squid.conf "https://scrip.000webhostapp.com/DEBIAN-8-THREE-IN-ONE/squid3.conf"
MYIP=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | grep -v '192.168'`;
sed -i s/xxxxxxxxx/$MYIP/g /etc/squid3/squid.conf;
service squid3 restart

# download script
cd /usr/bin
wget -O menu "https://scrip.000webhostapp.com/debianisus/menu.sh"
wget -O 1 "https://scrip.000webhostapp.com/debianisus/adduser.sh"
wget -O 2 "https://scrip.000webhostapp.com/debianisus/testuser.sh"
wget -O 3 "https://scrip.000webhostapp.com/debianisus/rename.sh"
wget -O 4 "https://scrip.000webhostapp.com/debianisus/repass.sh"
wget -O 5 "https://scrip.000webhostapp.com/debianisus/delet.sh"
wget -O 6 "https://scrip.000webhostapp.com/debianisus/deletuserxp.sh"
wget -O 7 "https://scrip.000webhostapp.com/debianisus/viewuser.sh"
wget -O 8 "https://scrip.000webhostapp.com/debianisus/restart.sh"
wget -O 9 "https://scrip.000webhostapp.com/debianisus/speedtest.py"
wget -O 10 "https://scrip.000webhostapp.com/debianisus/online.sh"
wget -O 11 "https://scrip.000webhostapp.com/debianisus/viewlogin.sh"
wget -O 12 "https://scrip.000webhostapp.com/debianisus/aboutsystem.sh"
wget -O 13 "https://scrip.000webhostapp.com/debianisus/aboutscrip.sh"

echo "0 0 * * * root /sbin/reboot" > /etc/cron.d/reboot

chmod +x menu
chmod +x 1
chmod +x 2
chmod +x 3
chmod +x 4
chmod +x 5
chmod +x 6
chmod +x 7
chmod +x 8
chmod +x 9
chmod +x 10
chmod +x 11
chmod +x 12
chmod +x 13

# finishing
cd
chown -R www-data:www-data /home/vps/public_html
service nginx start
service openvpn restart
service cron restart
service ssh restart
service dropbear restart
service squid3 restart
service webmin restart
rm -rf ~/.bash_history && history -c
echo "unset HISTFILE" >> /etc/profile

# info
clear
echo " =============
 Tepsus figther
 =============
 Service 
 ---------------------------------------------
 OpenSSH  : 22, 143 
 Dropbear : 80, 443 
 Squid3   : 8080, 3128 (limit to IP SSH) 
 ===========Detail OpenVPN Account ===========
 Download App
 http://$MYIP:81/kguza.html
 *********************************************
 Config OpenVPN (TCP 1194)
 Download File
 http://$MYIP:81/True-DtacProline.ovpn
 =============================================
 badvpn   : badvpn-udpgw port 7300 
 nginx    : 81 
 Webmin   : http://$MYIP:10000/ 
 Timezone : Asia/Thailand (GMT +7) 
 IPv6     : [off] 
 =============================================
 credit.  : Dev By Tepsus 
 Facebook : ควยอะไรไม่รุ้
 Line     : หีเเตดอะไรนักไม่รุ้
 ============================================="
echo " VPS AUTO REBOOT 00.00"
echo " ©©©©©©©©©©©©©©©©©©©© " 
echo " What { menu }  The Fuck "
echo " ©©©©©©©©©©©©©©©©©©©© " 
echo "Vnstat     :  http://$MYIP:81/vnstat"
echo "Pritunl    :  https://$MYIP"
echo "Sila login ke pritunl untuk proceed step seterusnya"
echo "Sila copy code dibawah untuk Pritunl anda"
pritunl setup-key