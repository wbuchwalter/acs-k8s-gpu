#!/bin/bash
uname -r
apt-get update
apt-get install -y gcc
apt-get install -y make
apt-get install -qqy linux-headers-`uname -r`
wget -P /tools http://us.download.nvidia.com/XFree86/Linux-x86_64/375.20/NVIDIA-Linux-x86_64-375.20.run

chmod +x /tools/NVIDIA-Linux-x86_64-375.20.run

sudo wget https://raw.githubusercontent.com/wbuchwalter/acs-k8s-gpu/master/nvidia_dev.bash -O /etc/init.d/nvidia
sudo chmod +x /etc/init.d/nvidia
sudo update-rc.d nvidia defaults
sudo service nvidia start


