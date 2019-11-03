dd if=/dev/zero of=/var/swapd bs=1024 count=1048576
mkswap /var/swapd
chmod 0777 /var/swapd
swapon /var/swapd
echo '\n/var/swapd   swap   swap   default 0 0' >> /etc/fstab
#昨天由于更换控制器导致设备号又乱了。。修改fstab的时候却出现不能修改的问题，显示Read-only file system，搜索了一下找了个临时解决办法搞定了
#1）应急措施：
#chmod 666 /dev/null
#mount -o remount,rw /
#2) 编辑/etc/fstab 然后重启
