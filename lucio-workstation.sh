#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update && 

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install python3 python-pip wine docker docker-compose git build-essential libssl-dev flatpak gnome-software-plugin-flatpak -y &&

## Instalando pacotes Snap ##

sudo snap install code --classic &&  
sudo snap install --edge node --classic && 
sudo snap install insomnia &&  
sudo snap install spotify &&
sudo snap install wps-office-multilang && 

## Adicionando repositório Flathub ##

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && 

## Instalando Apps do Flathub ##

sudo flatpak install flathub io.dbeaver.DBeaverCommunity -y &&
 

## Softwares que precisam de download externo ##

cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && wget -c https://www.gitkraken.com/download/linux-deb &&sudo dpkg -i *.deb&&

## Instalando Yarn ##

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - &&
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list&&

sudo apt-get update && sudo apt-get install yarn&&

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
