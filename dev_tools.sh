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


# INSTALL DOCKER

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce


#INTALL