yum -y install wget unzip curl
wget https://github.com/helloxz/ccaa/archive/master.zip
unzip master.zip && cd ccaa-master && sh ccaa.sh
chmod +x /etc/rc.d/rc.local
echo "/usr/sbin/ccaa start" >> /etc/rc.d/rc.local
wget -O qBittorrentCentOS7install.sh https://zhujiwiki.com/wp-content/uploads/2018/12/qBittorrentCentOS7install.sh && bash qBittorrentCentOS7install.sh
