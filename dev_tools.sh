#!/usr/bin/env bash


# INSTALL GIT
sudo apt-get install git -y

# INSTALL HEROKU CLIENT
sudo snap install --classic heroku -y


# INSTALL GOOGLE DRIVE
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt update
sudo apt install google-drive-ocamlfuse -y

cd $HOME
mkdir ~/google-drive

google-drive-ocamlfuse ~/google-drive/
# unmount
# fusermount -u ~/google-drive


# INSTALL
