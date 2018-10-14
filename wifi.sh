#!/usr/bin/env bash

# TODO: WIFI DAEMON

sudo ifconfig eth0 up
sudo dhclient eth0



wget http://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/linux-firmware_1.161_all.deb
sudo dpkg -i linux-firmware_1.161_all.deb