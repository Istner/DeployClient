#!/bin/bash
CONFIG_FILE="$HOME/istner-client/config/config.json"

# Write into config.json the authentication parameters and server information
read -p "Nombre de usuario: " uname
read -sp "Contraseña: " upass
echo "{\"uName\": \"$uname\", \"uPass\": \"$upass\",\"ipServer\": \"localhost\", \"portServer\": \"8000\"}" > $HOME

# Resolve software dependencies 
sudo apt update; sudo apt install python3 gphoto2 git

# Cambiar a un repositorio de la empresa
git config user.name Fran-FC
git config user.signingKey Estofen\!12
git config user.email frafolcm@gmail.com

git clone https://github.com/Fran-FC/istner-client $HOME

