#!/bin/sh
backupdir="$(date +%Y%m%d)_ha_files"
backupfile="HassBackup_$(date +%Y%m%d)"

bupath=/tmp/backup_temp/$backupdir
mkdir $bupath
sudo -u root pip freeze > $bupath/requirements.txt 
sudo find /config/ -type f \( -name "*.yaml" -or -name "*.xml" -or -name "*.conf" -or -name "*.sh" -or -name "*.txt" \) -exec cp --parents {} /tmp/backup_temp/  \;

mkdir $bupath/yowsup
#sudo cp ~/yowsup/yowsup-cli.config $bupath/yowsup
sudo cp -r ~/.yowsup $bupath/yowsup

cd $bupath
sudo zip -9 -r $bupath/$backupfile *
# sudo /usr/local/bin/gdrive -c /root/.gdrive upload $bupath/$backupfile.zip -p 0B0ceoQGBINYXM1JTamZic2JKem8 --delete
gdrive upload $bupath/$backupfile.zip -p 0B0ceoQGBINYXM1JTamZic2JKem8 --delete

# > $bupath/$backupfile.zip.log.txt

# scp -r $bupath pi@diskstation01:ha_backup/
rm -r $bupath
