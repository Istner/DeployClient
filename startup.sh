#!/bin/bash
CONFIG_FOLDER="$HOME/RaspberryClient/config/"
CONFIG_FILE="$HOME/config.json"
# Write into config.json the authentication parameters and server information
touch $CONFIG_FILE
read -p "Nombre de usuario para el cliente web: " uname
read -sp "Contraseña: " upass
echo
read -p "Url de la pagina web de Istner360 (formato-> ip:puerto): " url
echo "{\"uName\": \"$uname\", \"uPass\": \"$upass\",\"dirServer\": \"$url\"}" > $CONFIG_FILE

# Cambiar a un repositorio de la empresa
git clone https://github.com/Istner/RaspberryClient "$HOME/RaspberryClient"

# Resolve software dependencies 
sudo apt update
sudo apt install gphoto2 arp-scan python3-pip -y
# sudo apt upgrade -y; sudo apt autoremove -y
pip3 install sh

mv $CONFIG_FILE $CONFIG_FOLDER

gphoto2 --set-config capturetarget=1

