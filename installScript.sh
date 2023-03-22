#!/usr/bin/env bash
sudo dpkg --add-architecture i386

sudo apt install gnome-tweaks

mkdir /etc/instalacoes 

sudo killall snap-store && 
sudo apt update && 
sudo apt full-upgrade -y && 
sudo apt autoremove -y && 
sudo apt autoclean && 
sudo snap refresh

sudo apt-get update

sudo apt-get install -y wget apt-transport-https software-properties-common
wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y powershell

wget -c -P  /etc/instalacoes/ https://downloads.realvnc.com/download/file/vnc.files/VNC-Server-6.10.1-Linux-x86.deb
gdebi VNC-Server-6.10.1-Linux-x86.deb

wget -c -P  /etc/instalacoes/ https://downloads.realvnc.com/download/file/viewer.files/VNC-Viewer-6.22.515-Linux-x86.deb
gdebi /etc/instalacoes/VNC-Viewer-6.22.515-Linux-x86.deb

wget -c -P   https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_105.0.1343.42-1_amd64.deb
gdebi /etc/instalacoes/microsoft-edge-stable_105.0.1343.42-1_amd64.deb

wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
apt update
apt install anydesk

wget -c -P  /etc/instalacoes/ https://az764295.vo.msecnd.net/stable/74b1f979648cc44d385a2286793c226e611f59e7/code_1.71.2-1663191218_amd64.deb
gdebi code_1.71.2-1663191218_amd64.deb

sudo apt update
sudo apt install git
git --version

sudo apt-get update && sudo apt-get upgrade 
sudo apt-get install nodejs 

sudo add-apt-repository ppa:libretro/stable && 
sudo apt-get update && 
sudo apt-get install retroarch

sudo apt update && sudo apt upgrade
sudo apt install gdebi
wget https://launchpadlibrarian.net/570407966/grub-customizer_5.1.0-3build1_amd64.deb
sudo gdebi grub-customizer_5.1.0-3build1_amd64.deb

apt-get install remmina

touch /etc/apt/sources.list
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
apt update &&
sudo apt-get -y install bluetooth &&
sudo apt-get install blueman -y && 
sudo apt-get install blueman-manager &&
sudo apt install bluez  &&
sudo apt install bluez*  &&
sudo apt install bluez-cups  &&
sudo apt install bluez-hcidump  &&
sudo apt install bluez-meshd  &&
sudo apt install bluez-obexd  &&
sudo apt install bluez-source  &&
sudo apt install bluez-test-scripts  &&
sudo apt install bluez-test-tools  &&
sudo apt install libbluetooth-dev  &&
sudo apt install libbluetooth3  &&
sudo apt install rfkill -y  &&
sudo rfkill  &&
sudo rfkill unblock bluetooth &&
modprobe btusb  &&
sudo systemctl status Bluetooth  &&
sudo systemctl start Bluetooth  &&
sudo systemctl enable Bluetooth  &&
