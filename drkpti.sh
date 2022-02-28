#!/bin/sh

#####################################################
## DarkPentestToolInstallor (DrkPTI)               ##
## A useful tool to download pentest tools  quick  ##
## https://voidsecurity.ml                         ##
## Coded by: drk                                   ##
## NOTE: This will install the pentest tools.      ##
#####################################################

# Imports
RED="\033[0;31m"
YELLOW="\033[0;33m"
GREEN="\033[0;32m"
BLUE="\033[0;36m"

# Main Code
if [ "$(id -u)" -ne 0 ]; then

        echo "${RED}Permission Denied! Try running this with sudo." >&2
        sleep 2.5
        exit 1

fi
echo ${BLUE}"   _____       _    _____ _______ _____ "
echo ${BLUE}"  |  __ \     | |  |  __ \__   __|_   _|"
echo ${BLUE}"  | |  | |_ __| | _| |__) | | |    | |  "
echo ${BLUE}"  | |  | | '__| |/ /  ___/  | |    | |  "
echo ${BLUE}"  | |__| | |  |   <| |      | |   _| |_ "
echo ${BLUE}"  |_____/|_|  |_|\_\_|      |_|  |_____|"
                                       
sleep 1.5
echo "\n"
echo "${YELLOW}[*] UPDATING"
sleep 1 
apt-get -y -qq update 
echo "\n"
echo "${YELLOW}[*] Installing Pentest tools (this will take a while)"
apt-get -q -y install wireshark
apt-get -q -y install nmap
apt-get -q -y install aircrack-ng
apt-get -q -y install hydra
apt-get -q -y install metasploit
apt-get -q -y install burpsuite
apt-get -q -y install sqlmap
apt-get -q -y install nikto