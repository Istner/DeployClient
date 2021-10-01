#!/bin/bash
CONFIG_FOLDER="$HOME/RaspberryClient/config/"
CONFIG_FILE="$HOME/config.json"
# Write into config.json the authentication parameters and server information
touch $CONFIG_FILE
read -p "Nombre de usuario para el cliente web: " uname
read -p "Contraseña: " upass
echo
read -p "Numero de pasos por vuelta: " conversion
echo "{\"uName\": \"$uname\", \"uPass\": \"$upass\",\"conversion\": \"$conversion\"}" > $CONFIG_FILE

# Cambiar a un repositorio de la empresa
git clone https://github.com/Istner/RaspberryClient "$HOME/RaspberryClient"

# Resolve software dependencies 
sudo apt install gphoto2 arp-scan python3-pip libgphoto2-dev -y
# sudo apt upgrade -y; sudo apt autoremove -y
pip3 install sh gphoto2

mv $CONFIG_FILE $CONFIG_FOLDER

gphoto2 --set-config capturetarget=1

