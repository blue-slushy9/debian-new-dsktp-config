#! /bin/bash

# This is a Bash script I plan on using to automate the setup of my Linux
# machines, since I tend to go through many of them, both on bare metal and
# virtual machine; please note that this will only work on Debian-based
# distros, as it uses APT for package management;

sudo apt update && sudo apt upgrade -y

sudo apt install vim

sudo apt install git

# Should automatically install latest version;
sudo apt install python

sudo apt install docker

# Start the Docker daemon (if it isn't already), otherwise the pull command
# below will not execute;
sudo systemctl start docker

# Download the official Python image from DockerHub;
sudo docker pull python 

######## DOWNLOAD AND INSTALL 1PASS


