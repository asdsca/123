dd if=/dev/zero of=/var/swapd bs=1024 count=1048576
mkswap /var/swapd
chmod 0777 /var/swapd
swapon /var/swapd
echo '\n/var/swapd   swap   swap   default 0 0' >> /etc/fstab
