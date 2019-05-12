#!bin/bash

user=winter
 
sudo apt install gnome-online-accounts
sudo apt install gnome-control-center

sudo mkdir -p /home/$user/.local/share/applications

cp /usr/share/applications/gnome-control-center.desktop /home/$user/.local/share/applications/

sed -i '/Exec/c\Exec=env XDG_CURRENT_DESKTOP=GNOME gnome-control-center' /home/$user/.local/share/applications/gnome-control-center.desktop
sed -i '/OnlyShowIn/c\OnlyShowIn=GNOME;Unity;XFCE;' /home/$user/.local/share/applications/gnome-control-center.desktop

xdg-open /home/$user/.local/share/applications/gnome-control-center.desktop