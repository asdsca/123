yum -y install wget unzip curl
wget https://github.com/helloxz/ccaa/archive/master.zip
unzip master.zip && cd ccaa-master && sh ccaa.sh
chmod +x /etc/rc.d/rc.local
echo "/usr/sbin/ccaa start" >> /etc/rc.d/rc.local
wget -O qBittorrentCentOS7install.sh https://zhujiwiki.com/wp-content/uploads/2018/12/qBittorrentCentOS7install.sh && bash qBittorrentCentOS7install.sh
curl https://rclone.org/install.sh | sudo bash
wget https://www.moerats.com/usr/shell/rclone_debian.sh && bash rclone_debian.sh
rclone config
mkdir /data/GoogleDrive
bash <(curl -L -s https://raw.githubusercontent.com/wulabing/V2Ray_ws-tls_bash_onekey/master/install.sh) | tee v2ray_ins.log
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
swapoff /var/swapd
