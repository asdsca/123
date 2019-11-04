#!/bin/bash
yum install sudo curl wget epel-release -y
echo -e "\n"
clear
echo -e "\n"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[33m Welcome to Desktop environment and Remote connection tool ! V2.0.2 \033[0m"
echo "System requirements: CentOS 7+ / Debian 9+ / Ubuntu 18.04+ New installation"
echo -e "\033[33m This shell is for the system: CentOS 7+, if you need to run on other systems, please refer to the following tutorial. \033[0m"
echo "[Original] One-click installation of Desktop environment, RDP, Windows support for Linux"
echo "URL：https://tech.cxthhhhh.com/linux/2018/08/07/original-one-click-installation-of-desktop-environment-rdp-windows-support-for-linux-en.html"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[33m It is recommended to use CentOS 7 installation, the following pure system is recommended. \033[0m"
echo "Recommended system : [Original] Network one-click Reinstall CentOS 7 (Official, Pure, Safe, Efficient)"
echo "URL : https://tech.cxthhhhh.com/linux/2018/07/30/original-network-one-click-reinstall-centos-7-official-pure-safe-efficient-en.html"
echo "---------------------------------------------------------------------------------------------------------------------"
echo "from https://tech.cxthhhhh.com - 2018/09/10 - MeowLove"
echo "---------------------------------------------------------------------------------------------------------------------"
echo Press any key to continue! Exit with 'Ctrl'+'C' !

echo -e "\n"
sudo cd /root
yum install epel-release -y

echo -e "\n"
sudo cd /root
yum groupinstall "X Window System" -y
yum groupinstall "MATE Desktop" -y
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Desktop environment is installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
sudo cd /root
rpm -Uvh --force https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/CentOS/Nux-Dextop/nux-dextop-release-0-5.el7.nux.noarch.rpm --quiet
yum install remmina remmina-plugins-* -y
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Remmina FileZilla Firefox Already installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
sudo cd /root
yum install tigervnc-server tigervnc -y
yum install xrdp -y
touch ~/.Xclients
echo "mate-session" > ~/.Xclients
chmod a+x ~/.Xclients
touch /home/RdpUser/.Xclients
echo "mate-session" > /home/RdpUser/.Xclients
chmod a+x /home/RdpUser/.Xclients
systemctl enable xrdp
systemctl start xrdp
firewall-cmd --add-port=3389/tcp --permanent
firewall-cmd --reload
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Remote connection RDP is installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n\n\n"
clear
echo -e "\n"
echo "---------------------------------------------------------------------------------------------------------------------"
echo "The current default system language is Chinese."
echo "If you are an English user, please execute ' sudo localectl set-locale LANG=en_US.UTF-8 '"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[33m Warning: Now, you need to pay attention to the following, please visit this page. \033[0m"
echo "[Original] One-click installation of Desktop environment, RDP, Windows support for Linux"
echo "https://tech.cxthhhhh.com/linux/2018/08/07/original-one-click-installation-of-desktop-environment-rdp-windows-support-for-linux-en.html"
echo "---------------------------------------------------------------------------------------------------------------------"
echo "End to Desktop environment and Remote connection tool ! V2.0.2"
echo -e "\033[33m Everything is ready and the system is restarting. Then you can connect via (RDP)IP:3389. \033[0m"
echo "Normally, the [root] user is not recommended. The new user [RdpUser] has been created with the password [cxthhhhh.com]. Please change the default password as soon as possible after login."
echo "---------------------------------------------------------------------------------------------------------------------"
echo "from https://tech.cxthhhhh.com - 2018/09/11 - MeowLove"
echo "---------------------------------------------------------------------------------------------------------------------"
sleep 5s
reboot
echo -e "\n"
