yum -y groupinstall "Development Tools"
yum -y install xz m4 make automake libtool gettext openssl-devel libcurl-devel libevent-devel intltool gtk3-devel psmisc
wget https://github.com/transmission/transmission-releases/raw/master/transmission-2.94.tar.xz
tar xf transmission-2.94.tar.xz
cd transmission-2.94
./configure
make
make install
cd ~
firewall-cmd --permanent --add-port=9091/tcp
firewall-cmd --reload
