bash <(curl -L -s https://raw.githubusercontent.com/wulabing/V2Ray_ws-tls_bash_onekey/master/install.sh) | tee v2ray_ins.log
dd if=/dev/zero of=/var/swapd bs=1024 count=1048576
mkswap /var/swapd
chmod 0644 /var/swapd
swapon /var/swapd
echo '/var/swapd   swap   swap   default 0 0' >> /etc/fstab
echo -e"昨天由于更换控制器导致设备号又乱了。。修改fstab的时候却出现不能修改的问题，显示Read-only file system，搜索了一下找了个临时解决办法搞定了\n"
echo -e"1）应急措施：\n"
echo -e"chmod 666 /dev/null\n"
echo -e"mount -o remount,rw /\n"
echo -e"2) 编辑/etc/fstab 然后重启"
