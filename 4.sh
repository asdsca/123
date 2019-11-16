dd if=/dev/zero of=/var/swapd bs=1024 count=4194304
chmod 0644 /var/swapd
mkswap /var/swapd
swapon /var/swapd
echo '/var/swapd   swap   swap   default 0 0' >> /etc/fstab
echo "昨天由于更换控制器导致设备号又乱了。。修改fstab的时候却出现不能修改的问题，显示Read-only file system，搜索了一下找了个临时解决办法搞定了\n"
echo "1）应急措施：\n"
echo "chmod 666 /dev/null\n"
echo "mount -o remount,rw /\n"
echo "2) 编辑/etc/fstab 然后重启"
reboot
