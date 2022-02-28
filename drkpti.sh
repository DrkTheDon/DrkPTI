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
        sleep 1.5
        exit 1

fi
echo ${BLUE}"   _____       _    _____ _______ _____ "
echo ${BLUE}"  |  __ \     | |  |  __ \__   __|_   _|"
echo ${BLUE}"  | |  | |_ __| | _| |__) | | |    | |  "
echo ${BLUE}"  | |  | | '__| |/ /  ___/  | |    | |  "
echo ${BLUE}"  | |__| | |  |   <| |      | |   _| |_ "
echo ${BLUE}"  |_____/|_|  |_|\_\_|      |_|  |_____|"
echo ${RED}"         Drk's PentestToolsInstaller     "                                    
sleep 1.5
echo "\n"
echo "${YELLOW}[*] UPDATING"
sleep 1 
apt-get -y -qq update 
echo "\n"
echo "${GREEN}[*] Installing Pentest tools (this will take a while)"
echo "\n"
apt-get -qq -y install wireshark
echo "${RED}Installed ${GREEN} Wireshark ${RED} ${YELLOW}[1/8]"
apt-get -qq -y install nmap
echo "${RED}Installed ${GREEN} Nmap ${RED} ${YELLOW}[2/8]"
apt-get -qq -y install aircrack-ng
echo "${RED}Installed ${GREEN} Aircrack-ng ${RED} ${YELLOW}[3/8]"
apt-get -qq -y install hydra
echo "${RED}Installed ${GREEN} Hydra ${RED} ${YELLOW}[4/8]"
cd /opt
sudo git clone https://github.com/rapid7/metasploit-framework.git
sudo chown -R `whoami` /opt/metasploit-framework
cd metasploit-framework
echo "${RED}Installed ${GREEN} Metasploit ${RED} ${YELLOW}[5/8]"
apt-get -qq -y install burpsuite
echo "${RED}Installed ${GREEN} Burpsuite ${RED} ${YELLOW}[6/8]"
apt-get -qq -y install sqlmap
echo "${RED}Installed ${GREEN} Sqlmap ${RED} ${YELLOW}[7/8]"
apt-get -qq -y install nikto
echo "${RED}Installed ${GREEN} Nikto ${RED} ${YELLOW}[8/8]"
echo "\n"
echo "${GREEN} THANK YOU FOR USING DRK-PTI. https://github.com/DrkTheDon/DrkPTI"
