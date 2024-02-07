#!/bin/bash

start_install(){
        sudo cp ./Flatpak-Easy-Updater/flat-updater /usr/local/bin/
        sudo chmod 755 /usr/local/bin/flat-updater
        (crontab -l 2>/dev/null; echo "@reboot /usr/local/bin/flat-updater") | crontab -
}

#Checking required packages are installed
command -v git >/dev/null 2>&1 || { echo >&2 "Git is required but it's not installed.  Aborting."; exit 1; }
command -v flatpak >/dev/null 2>&1 || { echo >&2 "Flatpak is required but it's not installed.  Aborting."; exit 1; }

# Begin isntallation
        if [ -d ./Flatpak-Easy-Updater ]
        then
            start_install
        else
        git clone https://github.com/Flow-dev0/Flatpak-Easy-Updater
        start_install
        fi


