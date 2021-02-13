#!/bin/bash

## SECTION remove eventuais travas do apt
sudo rm/var/lib/dpkg/lock-frontend
sudo rm/var/cache/apt/archives/lock

## SECTION Atualizando repositorios
sudo apt update

## SECTION Intalando o Brave
sudo apt install apt-transport-https curl gnupg -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

## SECTION Instalando o Visua studio Code
sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - -y
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y
sudo apt update
sudo apt install code -y

## SECTION Instalando o Flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y

## SECTION Adicionando o FlatHub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo -y

## SECTION Instalando Steam
sudo apt install steam -y

## SECTION Instalando o Ghimp e o photogimp
sudo snap install photogimp -y

## SECTION Instaando o Spotify
sudo snap install spotify -y

## SECTION Instalando Discord
sudo snap install discord -y

## SECTION Instalando o PopSicle


## SECTION Instalando o Vlc
sudo snap install vlc -y

## SECTION Adicionando/Confirmando arquitetura de 32 bits ##

sudo dpkg --add-architecture i386

## SECTION Atualizando o repositório ##

sudo apt update

## SECTION Adicionando repositórios do Lutris e do Wine##

sudo add-apt-repository ppa:lutris-team/lutris -y

wget -nc https://dl.winehq.org/wine-builds/winehq.key

sudo apt-key add winehq.key -y

sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'

## SECTION Atualizando o repositório depois da adição de novos repositórios ##

sudo apt update

## SECTION Instalação do Lutris, Wine e adicionais para Battle.net ##

sudo apt install lutris libvulkan1 libvulkan1:i386 -y

sudo apt-get install --install-recommends winehq-stable wine-stable wine-stable-i386 wine-stable-amd64 -y

sudo apt-get install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386 -y

## SECTION Instalando atualização no sitema e apts

sudo apt dist-upgrade -y

sudo apt full-upgrade -y

echo "Script Finalizado!"
