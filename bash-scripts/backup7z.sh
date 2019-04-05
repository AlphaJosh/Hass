#!/bin/sh
rm /config/misc-hass-files.7z
cd /config
7z a misc-hass-files.7z -pH@cker13 plex.conf yowsup.conf secrets.yaml bash-scripts/* /root/dasher/config/config.json /etc/systemd/system/dasher.service /etc/systemd/system/hass.service /etc/fstab

git add -A
git commit -am "Inc Update"
# git pull
#git pull origin master
git push -u origin master
# git fetch

