#!bin/bash

sudo apt install gnome-online-accounts
sudo apt install gnome-control-center

sudo mkdir -p /home/storm/.local/share/applications

cp /usr/share/applications/gnome-control-center.desktop /home/storm/.local/share/applications/

sed -i '/Exec/c\Exec=env XDG_CURRENT_DESKTOP=GNOME gnome-control-center' /home/storm/.local/share/applications/gnome-control-center.desktop
sed -i '/OnlyShowIn/c\OnlyShowIn=GNOME;Unity;XFCE;' /home/storm/.local/share/applications/gnome-control-center.desktop

xdg-open /home/storm/.local/share/applications/gnome-control-center.desktop