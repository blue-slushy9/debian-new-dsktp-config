#! /bin/bash

####### THIS CODE SHOULD INSTALL 1PASSWORD ON DEBIAN-BASED DISTROS

# Adds the repository URL to the /etc/apt/sources.list.d/1password.list file;
echo 'deb [arch=amd64] https://downloads.1password.com/linux/debian/amd64 stable main' | sudo tee /etc/apt/sources.list.d/1password.list

# Downloads the GPG key and saves it to the /usr/share/keyrings/1password.gpg file;
wget -qO- https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password.gpg

sudo apt update

sudo apt install 1password

1password
