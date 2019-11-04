#!/bin/bash
yum install -y epel-release
yum groupinstall "Server with GUI"
systemctl set-default graphical
reboot
