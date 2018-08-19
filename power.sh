#!/bin/bash
echo "Installing power tools"
sudo apt-get --assume-yes purge laptop-mode-tools
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get --assume-yes update
sudo apt-get --assume-yes install tlp
sudo tlp start
sudo apt-get --assume-yes install powertop
