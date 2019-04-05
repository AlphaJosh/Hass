#!/bin/bash

apt-get update
apt-get upgrade -y

echo "Stopping homeassistant"
sudo systemctl stop hass

echo "Activating virtualenv"
cd /hass
#source bin/activate

. /hass/bin/activate

pip install --upgrade pip3

echo "Upgrading homeassistant"
pip3 install --upgrade homeassistant
#pip3 install --pre --upgrade homeassistant
# npm i -g npm

pip install --upgrade colorlog


echo "Deactivating virtualenv"
deactivate

echo "Starting homeassistant"
sudo systemctl start hass
