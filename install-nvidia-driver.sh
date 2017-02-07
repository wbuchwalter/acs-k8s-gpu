#!/bin/bash

apt-get update
apt-get install -y gcc
apt-get install -y make
apt-get install -qqy linux-headers-`uname -r`
wget -P /tools http://us.download.nvidia.com/XFree86/Linux-x86_64/375.20/NVIDIA-Linux-x86_64-375.20.run

chmod +x /tools/NVIDIA-Linux-x86_64-375.20.run
sh /tools/NVIDIA-Linux-x86_64-375.20.run -a -s
