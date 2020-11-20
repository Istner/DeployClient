#!/bin/bash
CONFIG_FOLDER="$HOME/istner-client/config/"
CONFIG_FILE="$HOME/config.json"
# Write into config.json the authentication parameters and server information
touch $CONFIG_FILE
read -p "Nombre de usuario para el cliente web: " uname
read -sp "Contraseña: " upass
echo "{\"uName\": \"$uname\", \"uPass\": \"$upass\",\"ipServer\": \"localhost\", \"portServer\": \"8000\"}" > $CONFIG_FILE

# Cambiar a un repositorio de la empresa
git clone https://github.com/Fran-FC/istner-client "$HOME/istner-client"

# Resolve software dependencies 
sudo apt update; sudo apt install python3 gphoto2 -y; sudo apt upgrade -y; sudo apt autoremove -y

mv $CONFIG_FILE $CONFIG_FOLDER
