yum groupinstall "Server with GUI"
systemctl set-default graphical
yum install -y tigervnc-server xrdp
systemctl start xrdp
systemctl enable xrdp
firewall-cmd --permanent --add-port=3389/tcp
firewall-cmd --reload
reboot
