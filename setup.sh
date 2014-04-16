#!/usr/bin/env bash
sudo apt-get install linux-headers-generic build-essential dkms
sudo apt-get update -y
sudo apt-get install git -y
sudo apt-get install ruby -y
sudo apt-get install gem -y
sudo apt-get install bundler -y
sudo apt-get install ubuntu-desktop -y

wget http://download.virtualbox.org/virtualbox/4.3.8/VBoxGuestAdditions_4.3.8.iso
sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro VBoxGuestAdditions_4.3.8.iso /media/VBoxGuestAdditions
sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_4.3.8.iso
sudo umount /media/VBoxGuestAdditions
sudo rmdir /media/VBoxGuestAdditions
