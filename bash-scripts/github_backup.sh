#!/bin/bash

#####################################################################
# Name: Git Backup
# ===================================================================
# Filename: /config/bash-scripts/github_backup.sh
# Description: One way backup of the config files to github
#
# Note: This does not backup the Hassio addons. It is recommended to use https://github.com/danielwelch/hassio-dropbox-sync
# 

#####################################################################
# Git Setup
# ===================================================================
# ssh-keygen -t rsa -C "your_email@example.com"
# cd /config
# git init
# git config --global user.name "GitHub_Username"
# git config --global user.email "Email Used in sshkeygen"
# git remote add origin git@github.com:GitHub_Username/Github_Repo.git

# git config --global user.name "AlphaJosh"
# git config --global user.email "Home@TeamNathan.co"
# git remote add origin git@github.com:AlphaJosh/Hass.git

## Howto change:: git remote set-url origin git@github.com:GitHub_Username/Github_Repo.git
# git remote set-url origin git@github.com:AlphaJosh/Hassio.git


# cp ~/.ssh/id_rsa.pub ~/config/id_rsa.pub.txt
# cat ~/.ssh/id_rsa.pub to github deploy keys https://github.com/GitHub_Username/Github_Repo/settings/keys

# chmod +x ./bash-scripts/github_backup.sh
# sed -i -e 's/\r$//' ./bash-scripts/github_backup.sh
# sed -i -e 's/\r$//' ./.gitignore


#####################################################################
# Test SSH Access
# ===================================================================
# ssh -T git@github.com

#####################################################################
# If .gitignore is being ignored
# git rm -r --cached .;
# git add .;
# git commit -m "Untracked files issue resolved to fix .gitignore";

hassio homeassistant check
cd /root/config

git add .
git status
git commit -m "[Daily Backup] - $(date +"%Y-%m-%d %T")"
git push origin master

exit
