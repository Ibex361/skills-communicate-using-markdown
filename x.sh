#!/bin/bash
#Get the necessary components
apt-get update
apt-get install udisks2 -y
echo " " > /var/lib/dpkg/info/udisks2.postinst
apt-mark hold udisks2
apt-get install sudo tzdata -y
apt-get install xfce4 xfce4-goodies xfce4-terminal parole -y
apt-get install dbus-x11 -y
apt-get --fix-broken install
apt-get clean


#Browser Fix
cp /etc/apt/sources.list ~/
wget https://raw.githubusercontent.com/wahasa/Ubuntu/main/Patch/passwd -P .vnc/
echo "deb http://ftp.debian.org/debian stable main contrib non-free" >> /etc/apt/source>
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys 648ACFD622F3D138
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys 605C66F00D6C9793
apt update

rm de-xfce.sh
