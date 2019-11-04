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
yum install remmina remmina-plugins-* -y

echo -e "\n"
sudo cd /root
yum install tigervnc-server tigervnc -y
yum install xrdp -y
touch ~/.Xclients
echo "mate-session" > ~/.Xclients
chmod a+x ~/.Xclients
systemctl enable xrdp
systemctl start xrdp
firewall-cmd --add-port=3389/tcp --permanent
firewall-cmd --reload
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Remote connection RDP is installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"
reboot
echo -e "\n"
