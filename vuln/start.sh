#!/bin/bash 

# check sudo 
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# install python3 and tmux
echo "Installing python3 and tmux"
apt install python3 tmux -y
# pacman -S python3 tmux --noconfirm
# dnf install -y python3 tmux 


echo "Downloading the proxy"
git clone https://github.com/ByteLeMani/ctf_proxy


# download tcp dumper
echo "Download TCP Dumper"
wget https://raw.githubusercontent.com/AlessandroMIlani/ctf_scripts/main/vuln/dump.sh
chmod +x dump.sh

echo "Download the proxy helper"
wget https://raw.githubusercontent.com/AlessandroMIlani/ctf_scripts/main/vuln/proxy_helper.py
python3 proxy_helper.py


