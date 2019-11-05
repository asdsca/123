yum -y install wget unzip curl
wget https://github.com/helloxz/ccaa/archive/master.zip
unzip master.zip && cd ccaa-master && sh ccaa.sh
cd ~
chmod +x /etc/rc.d/rc.local
echo "/usr/sbin/ccaa start" >> /etc/rc.d/rc.local
curl https://rclone.org/install.sh | sudo bash
wget https://www.moerats.com/usr/shell/rclone_debian.sh && bash rclone_debian.sh
rclone config
mkdir /data/GoogleDrive
