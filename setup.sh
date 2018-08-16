#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade

echo "Installing Git"
sudo apt-get --assume-yes install git


echo "Installing Docker"
sudo apt-get --assume-yes install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce


echo "Installing Anaconda"
cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-5.1.0-Linux-x86_64.sh
bash Anaconda3-5.1.0-Linux-x86_64.sh -b


echo "Installing Visual Studio Code"
sudo snap install --classic vscode




